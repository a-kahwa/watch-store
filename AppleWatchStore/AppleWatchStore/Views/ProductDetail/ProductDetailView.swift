//
//  ProductDetailView.swift
//  AppleWatchStore
//
//  Created by Arthur Nsereko Kahwa on 6/20/24.
//

import SwiftUI

struct ProductDetailView: View {
    var body: some View {
        ZStack {
            ScrollView {
                header
                
                colors
                
                VStack(spacing: 48) {
                    ProductDetailDescriptionView()
                    
                    CaseSizesView()
                    
                    WristSizesView()
                    
                    ConnectivityView()
                    
                    AppleCareView()
                }
                .padding(.horizontal)
            }
        }
        .safeAreaInset(edge: .bottom) {
            ZStack {
                addToCart
            }
            .frame(height: 80)
            .padding(.vertical, 8)
            .background(.ultraThinMaterial)
        }
    }

    var header: some View {
        ZStack(alignment: .bottom)  {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .fill(Constants.gradient)
                    .frame(height: 280.0 / 1.1)
            }
            
            ZStack {
                Image(.sportBandProductRedLarge)
                    .resizable()
                    .frame(width: 405, height: 405)
                
                Image(.aluminumMidnightLarge)
                    .resizable()
                    .frame(width: 405, height: 405)
            }
        }
        .padding(.horizontal)
    }
    
    var colors: some View {
        VStack {
            SectionHeader(title: "Brand Colors")
                .padding(.horizontal)
            
            HStack {
                ForEach(0 ..< 3) { item in
                    Circle()
                        .fill(.gray)
                        .frame(width: 32, height: 32)
                }
                
                Spacer()
            }
            .padding(.horizontal)
        }
        .padding(.horizontal)
    }
    
    var addToCart: some View {
        Button(action: {}) {
            Text("Add To Cart")
                .condensedLowercased(.medium, size: 24)
                .foregroundStyle(.white)
        }
        .buttonStyle(.customBorderedBlack)
        .padding(.horizontal)
    }
}

#Preview {
    ProductDetailView()
}
