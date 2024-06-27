//
//  ProductsGridView.swift
//  AppleWatchStore
//
//  Created by Arthur Nsereko Kahwa on 6/18/24.
//

import SwiftUI
import SwiftData

struct ProductsGridView: View {
    @Query var products: [Product]
    
    var body: some View {
        VStack {
            LazyVGrid(columns: Constants.columns, spacing: 16) {
                ForEach(products) { product in
                    NavigationLink {
                        ProductDetailView(product: product)
                    } label: {
                        GridProductItem(product: product)
                    }
                    .buttonStyle(.plain)
                }
            }
        }
        .padding(.top, 2)
    }
}

//#Preview {
//    NavigationStack {
//        ProductsGridView()
//    }
//}
