//
//  ContentView.swift
//  AppleWatchStore
//
//  Created by Arthur Nsereko Kahwa on 6/10/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
//            HomeView()
            ProductFilterView()
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
                .badge(88)
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
