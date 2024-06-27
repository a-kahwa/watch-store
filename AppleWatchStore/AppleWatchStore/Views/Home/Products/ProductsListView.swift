//
//  ProductsListView.swift
//  AppleWatchStore
//
//  Created by Arthur Nsereko Kahwa on 6/27/24.
//

import SwiftUI
import SwiftData

struct ProductsListView: View {
    @Query var products: [Product]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 60) {
                ForEach(products) { product in
                    NavigationLink {
                        ProductDetailView(product: product)
                    } label: {
                        WideProductItem(product: product)
                    }
                    .buttonStyle(.plain)
                }
            }
            .padding(.top, 60)
        }
    }
}

#Preview {
    ProductsListView()
}
