//
//  CaseSizesView.swift
//  AppleWatchStore
//
//  Created by Arthur Nsereko Kahwa on 6/20/24.
//

import SwiftUI

struct CaseSizesView: View {
    let product: Product
    
    var sortedSizes: [CaseSize] {
        get {
            product.caseSizes.sorted(by: { $0.order  < $1.order })
        }
        set {
            product.caseSizes = newValue
        }
    }
    
    var body: some View {
        VStack {
            SectionHeader(title: "Case Sizes")
                .padding(.bottom)
            
            ForEach(sortedSizes) { size in
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    SizeItemView(item: size)
                        .contentShape(RoundedRectangle(cornerRadius: 8))
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(.baseMediumGrey, lineWidth: 1)
                        )
                }
                .buttonStyle(.plain)
            }
        }
        .padding(.horizontal)
    }
}

//#Preview {
//    CaseSizesView()
//}
