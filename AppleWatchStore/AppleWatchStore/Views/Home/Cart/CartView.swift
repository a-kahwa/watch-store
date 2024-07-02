//
//  CartView.swift
//  AppleWatchStore
//
//  Created by Arthur Nsereko Kahwa on 6/17/24.
//

import SwiftUI

struct CartView: View {
    @Environment(ShoppingCart.self) var cart
    
    var body: some View {
        
        NavigationStack {
            List {
                ForEach(cart.products) { product in
                    casrtItem(product: product)
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
    
    
    func casrtItem(product: CartProduct) -> some View {
        HStack(alignment: .bottom, spacing: 20) {
            watchImage(product: product)
            
            watchDetails(product: product)
            
            Spacer()
        }
        .padding(.horizontal)
        .frame(minWidth: 0, maxWidth: .infinity)
    }
    
    func watchImage(product: CartProduct) -> some View {
        HStack {
            ZStack {
                Image(product.band)
                    .resizable()
                
                Image(product.face)
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
    
    func watchDetails(product: CartProduct) -> some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                Text(product.productSeries)
                    .condensed(.black, size: 20)
                    .lineLimit(2)
                
                Group {
                    Text("€").ultraLight() + Text(product.displayPrice).heavy()
                }
                
                Text(product.caseSize)
                    .condensed(.medium, size: 16)
                
                Text("\(product.caseMaterial) \(product.caseFinish) Case")
                    .condensed(.medium, size: 16)
                
                Text("\(product.bandColor) \(product.bandName)")
                    .condensed(.light, size: 16)
                
                Text("Loop Size: \(product.wristSize)")
                    .condensed(.light, size: 16)
                
                HStack {
                    Image(.iconWifi)
                    
                    Image(.dlTelekomLogo)
                        .resizable()
                        .frame(width: 32, height: 32)
                    
                    Image(.icon5G)
                        .opacity(product.cellularType == .wifiAndCellular ? 1 : 0)
                    
                }
            }
            
            HStack {
                Button(action: {
                    cart.decrement(product: product)
                }, label: {
                    Image(systemName: "minus")
                        .font(.system(size: 20))
                        .bold()
                        .padding(8)
                        .foregroundStyle(.white)
                })
                .frame(width: 40)
                .buttonStyle(.customBorderedBlack)
                
                Text("\(product.quantity)")
                    .condensed(.heavy, size: 40)
                
                Button(action: {
                    cart.increment(product: product)
                }, label: {
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
