//
//  CartView.swift
//  AppleWatchStore
//
//  Created by Arthur Nsereko Kahwa on 6/17/24.
//

import SwiftUI

struct CartView: View {
    var body: some View {
        NavigationStack {
            List {
                ForEach(0 ..< 1) { item in
                    casrtItem
                }
                .listRowSeparator(.hidden)
                .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                .alignmentGuide(.listRowSeparatorLeading) { _ in 0 }
                .background(Color.baseBackground)
            }
            .safeAreaInset(edge: .bottom) {
                cartTotals
            }
            .scrollIndicators(.hidden)
            .listStyle(.plain)
            .scrollContentBackground(.hidden)
            .navigationTitle("MY BAG")
            .navigationBarTitleDisplayMode(.large)
            .background(Color.baseBackground)
        }
    }
    
    var casrtItem: some View {
        HStack(alignment: .bottom, spacing: 20) {
            watchImage
            
            watchDetails
            
            Spacer()
        }
        .padding(.horizontal)
        .frame(minWidth: 0, maxWidth: .infinity)
    }
    
    var watchImage: some View {
        HStack {
            ZStack {
                Image(.sportBandProductRedLarge)
                    .resizable()
                
                Image(.aluminumMidnightLarge)
                    .resizable()
            }
            .frame(width: 268, height: 268)
            .padding(.bottom, 25)
            .frame(width: 180)
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .fill(Constants.gradient)
            )
        }
    }
    
    var watchDetails: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                Text("Aple Watch Series 8 Aple Watch Series 8")
                    .condensed(.black, size: 20)
                    .lineLimit(2)
                
                Group {
                    Text("€").ultraLight() + Text("888").heavy()
                }
                
                Text("45 mm")
                    .condensed(.medium, size: 16)
                
                Text("Starligh Aluminium Case")
                    .condensed(.medium, size: 16)
                
                Text("Abyss Blue Braided Solo Loop")
                    .condensed(.light, size: 16)
                
                Text("Loop Size: 88")
                    .condensed(.light, size: 16)
                
                HStack {
                    Image(.iconWifi)
                    
                    Image(.dlTelekomLogo)
                        .resizable()
                        .frame(width: 32, height: 32)
                    
                    Image(.icon5G)
                }
            }
            
            HStack {
                Button(action: {}, label: {
                    Image(systemName: "minus")
                        .font(.system(size: 20))
                        .bold()
                        .padding(8)
                        .foregroundStyle(.white)
                })
                .frame(width: 40)
                .buttonStyle(.customBorderedBlack)
                
                Text("88")
                    .condensed(.heavy, size: 40)
                
                Button(action: {}, label: {
                    Image(systemName: "plus")
                        .font(.system(size: 16))
                        .bold()
                        .padding(4)
                        .foregroundStyle(.white)
                })
                .frame(width: 32)
                .buttonStyle(.customBorderedBlack)
            }
        }
        .frame(maxHeight: 280)
    }
    
    var cartTotals: some View {
        ZStack {
            Rectangle()
                .fill(Color.white.opacity(0.2))
                .frame(height: 200)
                .background(
                    .regularMaterial, in: Rectangle()
                )
            
            VStack {
                HStack {
                    Text("Subtotal")
                        .condensed(.bold, size: 20)
                    
                    Spacer()
                    
                    Text("€").bold() + Text("888,88").bold(size: 20)
                }
                
                HStack {
                    Text("Tax")
                        .condensed(.bold, size: 20)
                    
                    Spacer()
                    
                    Text("€").bold() + Text("888,88").bold(size: 20)
                }
                
                Divider()
                
                VStack {
                    HStack {
                        Text("Total")
                            .condensed(.black, size: 24)
                        
                        Spacer()
                        
                        Text("€").ultraLight(size: 20) + Text("888,88").bold(size: 48)
                    }
                }
            }
            .padding()
        }
        .frame(height: 200)
    }
}

#Preview {
    CartView()
}
