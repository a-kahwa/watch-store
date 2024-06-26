//
//  AppleWatchStoreApp.swift
//  AppleWatchStore
//
//  Created by Arthur Nsereko Kahwa on 6/10/24.
//

import SwiftUI

@main
struct AppleWatchStoreApp: App {
    @State private var manager = DataManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(manager)
                .task {
                    await manager.initializeData()
                }
        }
    }
}
