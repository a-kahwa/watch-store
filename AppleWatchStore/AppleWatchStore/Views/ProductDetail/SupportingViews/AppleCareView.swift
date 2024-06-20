//
//  AppleCareView.swift
//  AppleWatchStore
//
//  Created by Arthur Nsereko Kahwa on 6/20/24.
//

import SwiftUI

struct AppleCareView: View {
    var body: some View {
        VStack {
            SectionHeader(title: "apple Care + Coverage")
                .padding(.bottom)
            
            addAppleCare
            
            noAppleCare
        }
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
    }
    
    var addAppleCare: some View {
        Button(action: {}) {
            
        }
    }
}

#Preview {
    AppleCareView()
}
