//
//  Category_Section.swift
//  AppleWatchStore
//
//  Created by Arthur Nsereko Kahwa on 6/17/24.
//

import SwiftUI

struct Category_Section: View {
    var body: some View {
        VStack(spacing: 20) {
            SectionHeader(title: "Watch Accessories")
                .padding(.horizontal)
            
            VStack {
                ForEach(0 ..< 5) { item in
                    Category_List_Item()
                }
            }
        }
    }
}

#Preview {
    Category_Section()
}
