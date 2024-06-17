//
//  HomeView.swift
//  AppleWatchStore
//
//  Created by Arthur Nsereko Kahwa on 6/17/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                content
            }
            .navigationTitle("Welcome")
            .navigationBarTitleDisplayMode(.large)
            .background(Color(.baseBackground))
        }
    }
    
    var content: some View {
        VStack {
            BrowseSection()
            
            PopularSection()
            
            CategorySection()
        }
    }
}

#Preview {
    HomeView()
}
