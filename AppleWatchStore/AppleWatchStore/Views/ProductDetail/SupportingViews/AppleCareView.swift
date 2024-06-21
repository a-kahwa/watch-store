//
//  AppleCareView.swift
//  AppleWatchStore
//
//  Created by Arthur Nsereko Kahwa on 6/20/24.
//

import SwiftUI

struct AppleCareView: View {
    var body: some View {
        VStack(spacing: 20) {
            SectionHeader(title: "apple Care + Coverage")
                .padding(.bottom)
            
            addAppleCare
            
            noAppleCare
        }
        .padding(.horizontal)
    }
    
    var noAppleCare: some View {
        Button(action: {}) {
            VStack(alignment: .leading) {
                Text("No Apple Care +")
                    .condensed(.bold, size: 20)
            }
            .padding(.vertical, 20)
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .contentShape(RoundedRectangle(cornerRadius: 8))
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(.baseMediumGrey, lineWidth: 1)
            )
        }
        .buttonStyle(.plain)
    }
    
    var addAppleCare: some View {
        Button(action: {}) {
            VStack(alignment: .leading) {
                header

                content
            }
            .padding(.vertical, 20)
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .contentShape(RoundedRectangle(cornerRadius: 8))
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(.baseMediumGrey, lineWidth: 1)
            )
        }
        .buttonStyle(.plain)
    }
    
    var header: some View {
        VStack {
            HStack(alignment: .lastTextBaseline) {
                Image(systemName: "apple.logo")
                    .foregroundStyle(.baseAppleRed)
                Text("Add Apple Care +")
                    .condensed(.bold, size: 20)
                
                Spacer()
                
                Text("€99 or €4,99/month")
                    .condensed(.regular, size: 16)
            }
            
            Divider()
            
            
        }
    }
    
    var content: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .firstTextBaseline) {
                Text("•")
                
                Text("Unlimited repairs for accidental damage\n protection")
            }
            
            HStack(alignment: .firstTextBaseline) {
                Text("•")
                
                Text("Unlimited repairs for accidental damage\n protection")
            }
            
            HStack(alignment: .firstTextBaseline) {
                Text("•")
                
                Text("Unlimited repairs for accidental damage\n protection")
            }
        }
        .foregroundStyle(.baseMediumGrey)
    }
}

#Preview {
    AppleCareView()
}
