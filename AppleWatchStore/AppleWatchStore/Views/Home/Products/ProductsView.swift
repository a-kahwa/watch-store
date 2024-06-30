//
//  ProductsView.swift
//  AppleWatchStore
//
//  Created by Arthur Nsereko Kahwa on 6/17/24.
//

import SwiftUI

struct ProductsView: View {
    @State private var layout = ProductLayout.list
    @State private var sheet: Sheet.SheetType?
            
    var body: some View {
        NavigationStack {
            content
                .navigationTitle("Apple Watches")
                .navigationBarTitleDisplayMode(.large)
                .toolbar { toolBarContent() }
                .fullScreenCover(item: $sheet, content: { Sheet(sheetType: $0 ) })
        }
    }
    
    var content: some View {
        Group {
            if layout == .grid {
                ProductsGridView()
            }
            else {
                ProductsListView()
            }
        }
    }
}

extension ProductsView {
    @ToolbarContentBuilder
    func toolBarContent() -> some ToolbarContent {
        ToolbarItem(placement: .topBarTrailing) {
            Button(action: {
                sheet = .filter
            }, label: {
                Image(systemName: "slider.horizontal.3")
            })
            .buttonStyle(.plain)
            .fontWeight(.semibold)
        }
        
        ToolbarItem(placement: .topBarTrailing) {
            Menu {
                Picker("Layout", selection: $layout) {
                    ForEach(ProductLayout.allCases) { option in
                        if option != .none {
                            Label(option.title, systemImage: option.imageName)
                                .tag(option)
                        }
                    }
                }
                .pickerStyle(.inline)
            } label: {
                Label("Layout Options", systemImage: layout.imageName)
                    .symbolVariant(.fill)
                    .labelStyle(.titleAndIcon)
            }
        }
    }
}

#Preview {
    ProductsView()
}
