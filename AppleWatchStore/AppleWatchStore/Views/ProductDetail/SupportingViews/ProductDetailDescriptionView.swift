//
//  ProductDetailDescriptionView.swift
//  AppleWatchStore
//
//  Created by Arthur Nsereko Kahwa on 6/20/24.
//

import SwiftUI

struct ProductDetailDescriptionView: View {
    let product: Product
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(product.detailTitle)
                    .condensed(.bold, size: 36)
                    .lineLimit(2)
                
                HStack(alignment: .center) {
                    Image(systemName: "star")
                        .font(.system(size: 16))
                        .symbolVariant(.fill)
                        .foregroundStyle(.baseGold)
                    
                    Text("5.0")
                        .condensed(.bold, size: 24)
                    
                    Button(action: {}) {
                        Text("888 Reviews")
                            .condensed(.light, size: 20)
                    }
                    
                    Spacer()
                    
                    Button(action: {}) {
                        Text("Add Review".uppercased())
                            .condensed(.light, size: 20)
                    }
                }
                .padding(.bottom, 4)
                
                Text(product.desc)
                    .condensed(.light, size: 20)
                    .padding(.horizontal)
            }
        }
        .padding(.horizontal)
    }
}

//#Preview {
//    ProductDetailDescriptionView()
//}
