//
//  WideProductItem.swift
//  AppleWatchStore
//
//  Created by Arthur Nsereko Kahwa on 6/19/24.
//

import SwiftUI

struct WideProductItem: View {
    var body: some View {
        ZStack {
            HStack(alignment: .bottom, spacing: 0) {
                VStack(spacing: 4) {
                    ZStack {
                        Image(.sportBandProductRedLarge)
                            .resizable()
                            .frame(width: 250, height: 250)
                        
                        Image(.aluminumMidnightLarge)
                            .resizable()
                            .frame(width: 250, height: 250)
                    }
                    .frame(width: 160)
                    .padding(.trailing)
                    
                    HStack {
                        ForEach(0..<3) { _ in
                            Circle()
                                .frame(width: 20, height: 20)
                        }
                    }
                }
                
                Spacer()
                
                VStack(alignment: .trailing, spacing: -4) {
                    Text("€").ultraLight() + Text("888").heavy()
                    
                    VStack(alignment: .trailing) {
                        Text("Midnight Aluminium Case")
                            .condensed(.bold, size: 16)
                        
                        
                        Text("Braided Solo Loop")
                            .condensed(.light, size: 16)
                    }
                }
                .foregroundStyle(.primary)
                .padding(.bottom, 4)
            }
        }
        .padding()
        .frame(height: 220, alignment: .bottom)
        .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(Constants.gradient)
        )
        .frame(maxWidth: .infinity, alignment: .bottom)
        .overlay(alignment: .topTrailing) {
            Constants.heart
        }
        .padding(.horizontal)
    }
}

#Preview {
    WideProductItem()
}
