//
//  ProductsGridView.swift
//  AppleWatchStore
//
//  Created by Arthur Nsereko Kahwa on 6/18/24.
//

import SwiftUI

struct ProductsGridView: View {
    var body: some View {
        VStack {
            LazyVGrid(columns: Constants.columns, spacing: 16) {
                ForEach(0 ..< 12) { item in
                    NavigationLink {
                        ProductDetailView()
                    } label: {
                        GridProductItem()
                    }
                    .buttonStyle(.plain)
                }
            }
        }
        .padding(.top, 2)
    }
}

#Preview {
    NavigationStack {
        ProductsGridView()
    }
}
