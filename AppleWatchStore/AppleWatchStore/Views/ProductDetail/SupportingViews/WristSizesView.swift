//
//  WristSizesView.swift
//  AppleWatchStore
//
//  Created by Arthur Nsereko Kahwa on 6/20/24.
//

import SwiftUI

struct WristSizesView: View {
    let product: Product
    
    var sortedSizes: [WristSize] {
        get {
            product.wristSizes.sorted(by: { $0.order < $1.order })
        }
        set {
            product.wristSizes = newValue
        }
    }
    
    var body: some View {
        VStack {
            SectionHeader(title: "Wrist Sizes")
                .padding(.bottom)
            
            ForEach(sortedSizes) { size in
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    WristItemView(item: size)
                        .contentShape(RoundedRectangle(cornerRadius: 8))
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(.baseMediumGrey, lineWidth: 1)
                        )
                }
                .buttonStyle(.plain)
            }
        }
    }
}

//#Preview {
//    WristSizesView()
//}
