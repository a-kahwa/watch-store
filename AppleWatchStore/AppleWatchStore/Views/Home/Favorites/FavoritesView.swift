//
//  FavoritesView.swift
//  AppleWatchStore
//
//  Created by Arthur Nsereko Kahwa on 6/17/24.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 60) {
                    ForEach(0 ..< 4) { item in
                        NavigationLink {
                            ProductsGridView()
                        } label: {
                            WideProductItem()
                        }
                        .buttonStyle(.plain)
                    }
                }
                .padding(.top, 60)
            }
            .background(Color.baseBackground)
            .navigationTitle("MY FAVORITES")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

#Preview {
    FavoritesView()
}
