//
//  CardView.swift
//  AppleWatchStore
//
//  Created by Arthur Nsereko Kahwa on 6/11/24.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        VStack {
            ZStack(alignment: .bottom) {
                RoundedRectangle(cornerRadius: 24)
                    .fill(Constants.gradient)
                    .frame(height: 248.0 / 1.6)
                
                VStack {
                    Image(.watchCard40Ultra)
                    
                    VStack {
                        VStack(alignment: .center, spacing: -4) {
                            Text("Apple Watch Ultra")
                                .condensed(.light, size: 20)
                            
                            Text("Ready For Adventure")
                                .condensedLowercased(.bold, size: 24)
                        }
                        
                        Button(action: {
                            
                        }) {
                            Text("Shop")
                                .condensedLowercased(.medium, size: 24)
                                .foregroundStyle(.white)
                        }
                        .buttonStyle(.customBorderedBlack)
                    }
                    .foregroundStyle(.primary)
                    .padding(.horizontal)
                    .padding(.bottom)
                }
            }
        }
    }
}

#Preview {
    CardView()
}
