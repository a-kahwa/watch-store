//
//  ProductFilterView.swift
//  AppleWatchStore
//
//  Created by Arthur Nsereko Kahwa on 6/18/24.
//

import SwiftUI

struct ProductFilterView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                content
            }
            .background(Color(.baseBackground))
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    closeButton
                }
            }
            .navigationTitle("PRODUCT FILTERS")
            .safeAreaInset(edge: .bottom) {
                filterStatus
            }
        }
    }
    
    var content: some View {
        VStack(spacing: 48) {
            ForEach(0 ..< 3) { item in
                ProductFilterSectionView()
            }
        }
        .padding(.top, 40)
    }
    
    var filterStatus: some View {
        ZStack {
            Rectangle()
                .fill(Color.white.opacity(0.1))
                .frame(height: 124)
                .background(.ultraThinMaterial, in: Rectangle())
            
            Button(action: {}, label: {
                Text("FILTER (0) ITEMS")
                    .condensedLowercased(.medium, size: 24)
                    .foregroundStyle(.white)
            })
            .buttonStyle(.customBorderedBlack)
            .padding(.horizontal, 20)
        }
        .offset(y: 32)
        .frame(height: 124)
    }
    
    var closeButton: some View {
        Button(action: {}, label: {
            Text("CLOSE")
                .foregroundStyle(.primary)
                .condensed(.bold, size: 20)
        })
        .buttonStyle(.plain)
    }
}

#Preview {
    ProductFilterView()
}
