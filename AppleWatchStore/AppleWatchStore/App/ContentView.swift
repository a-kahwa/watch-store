//
//  ContentView.swift
//  AppleWatchStore
//
//  Created by Arthur Nsereko Kahwa on 6/10/24.
//

import SwiftUI

struct ContentView: View {
    @Environment(ShoppingCart.self) var cart
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                .tag(0)
            
           ProductsView()
                .tabItem {
                    Label("Products", systemImage: "applewatch")
                }
                .tag(1)
            
            CartView()
                .tabItem {
                    Label("Bag", systemImage: "bag")
                }
                .badge(cart.cartQuantity)
                .tag(2)
            
            FavoritesView()
                .tabItem {
                    Label("Favorites", systemImage: "heart")
                }
                .tag(3)
        }
        .customNavigationBar()
    }
}

#Preview {
    ContentView()
}
