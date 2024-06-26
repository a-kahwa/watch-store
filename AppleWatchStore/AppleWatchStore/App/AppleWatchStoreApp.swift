//
//  AppleWatchStoreApp.swift
//  AppleWatchStore
//
//  Created by Arthur Nsereko Kahwa on 6/10/24.
//

import SwiftUI
import SwiftData

@main
struct AppleWatchStoreApp: App {
    @State private var manager = DataManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(manager)
                .modelContainer(manager.modelContainer)
                .task {
                    await manager.initializeData()
                }
        }
    }
}
