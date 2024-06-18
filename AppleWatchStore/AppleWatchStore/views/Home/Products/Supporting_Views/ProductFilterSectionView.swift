//
//  ProductFilterSectionView.swift
//  AppleWatchStore
//
//  Created by Arthur Nsereko Kahwa on 6/18/24.
//

import SwiftUI

struct ProductFilterSectionView: View {
    var body: some View {
        VStack {
            SectionHeader(title: "SECTION TITLE HERE")
            
            LazyVGrid(columns: Constants.filterColumns, spacing: 8) {
                ForEach(0 ..< 5) { item in
                    sectionItem
                }
            }
        }
        .padding(.horizontal)
    }
    
    var sectionItem: some View {
        HStack {
            ZStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 24, height: 24)
                
                Image(.iconCheckmark)
            }
            
            Text("Title goes here")
                .condensed(.regular, size: 16)
            
            Spacer()
        }
    }
}

#Preview {
    ProductFilterSectionView()
}
