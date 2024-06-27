//
//  ProductFilterSectionView.swift
//  AppleWatchStore
//
//  Created by Arthur Nsereko Kahwa on 6/18/24.
//

import SwiftUI

struct ProductFilterSectionView: View {
    @Binding var items: [ProductFilter]
    
    var body: some View {
        VStack {
            SectionHeader(title: items.first?.category.capitalized ?? "")
            
            LazyVGrid(columns: Constants.filterColumns, spacing: 8) {
                ForEach($items) { $item in
                    sectionItem(item: item)
                }
            }
        }
        .padding(.horizontal)
    }
    
    func sectionItem(item: ProductFilter) -> some View {
        HStack {
            ZStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 24, height: 24)
                
                Image(.iconCheckmark)
            }
            
            Text(item.title)
                .condensed(.regular, size: 16)
            
            Spacer()
        }
        .onTapGesture {
            item.isSelected.toggle()
        }
    }
}

//#Preview {
//    ProductFilterSectionView()
//}
