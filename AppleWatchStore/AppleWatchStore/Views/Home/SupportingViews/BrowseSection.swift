//
//  BrowseSection.swift
//  AppleWatchStore
//
//  Created by Arthur Nsereko Kahwa on 6/12/24.
//

import SwiftUI

struct BrowseSection: View {
    var body: some View {
        VStack(spacing: 32) {
            SectionHeader(title: "Browse By Model")
                .padding(.horizontal)
            
            ScrollView(.horizontal) {
                HStack {
                    ForEach(0..<4) { _ in
                        CardView()
                            .frame(width: UIScreen.main.bounds.width - 32)
                            .frame(minWidth: 0, maxWidth: .infinity)
                        
                    }
                }
            }
            .scrollIndicators(.never)
            .safeAreaPadding(.horizontal, 8)
            .scrollTargetBehavior(.paging)
        }
    }
}

#Preview {
    BrowseSection()
}
