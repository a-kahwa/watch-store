//
//  ProductDetailDescriptionView.swift
//  AppleWatchStore
//
//  Created by Arthur Nsereko Kahwa on 6/20/24.
//

import SwiftUI

struct ProductDetailDescriptionView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Midnight Aluminium Case With Nike Sports Band")
                    .condensed(.bold, size: 36)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .frame(minWidth: 0, maxWidth: .infinity)
                
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
                .padding(.horizontal)
                
                Text("The aluminum case is lightweight and made from 100 percent recycled aerospace-grade alloy. \n\nThe Nike Sport Band is made from a durable high-performance fluoroelastomer with compression-molded perforations for breathability.")
                    .condensed(.light, size: 20)
                    .padding(.horizontal)
            }
            
            Spacer()
        }
        .padding(.horizontal)
    }
}

#Preview {
    ProductDetailDescriptionView()
}
