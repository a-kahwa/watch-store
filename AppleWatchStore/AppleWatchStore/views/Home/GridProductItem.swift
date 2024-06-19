//
//  GridProductItem.swift
//  AppleWatchStore
//
//  Created by Arthur Nsereko Kahwa on 6/13/24.
//

import SwiftUI

struct GridProductItem: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                ZStack {
                    Image(.sportBandProductRedLarge)
                        .resizable()
                        .frame(width: 250, height: 250)
                    
                    Image(.aluminumMidnightLarge)
                        .resizable()
                        .frame(width: 250, height: 250)
                }
                
                VStack {
                    Text("€").ultraLight() + Text("888").heavy()
                    
                    Text("Midnight Aluminium Case")
                        .condensed(.bold, size: 16)
                    
                    Text("Braided Solo Loop")
                        .condensed(.light, size: 16)
                }
                .foregroundStyle(.primary)
                .padding(.bottom, 4)
                
                HStack {
                    ForEach(0..<4) { _ in
                        Circle()
                            .frame(width: 20, height: 20)
                    }
                }
                .padding(.bottom)
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(Constants.gradient)
        )
        .overlay(alignment: .topTrailing) {
            heart
        }
    }
    
    var heart: some View {
        Image(systemName: "heart")
            .symbolVariant(.none)
            .font(.system(size: 24))
            .padding(.trailing, 20)
            .padding(.top, 10)
    }
}

#Preview {
    GridProductItem()
}
