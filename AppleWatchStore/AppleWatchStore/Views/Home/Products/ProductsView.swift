//
//  ProductsView.swift
//  AppleWatchStore
//
//  Created by Arthur Nsereko Kahwa on 6/17/24.
//

import SwiftUI

struct ProductsView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                content
            }
            .navigationTitle("Apple Watches")
            .navigationBarTitleDisplayMode(.large)
        }
    }
    
    var content: some View {
        ProductsGridView()
    }
}

#Preview {
    ProductsView()
}
