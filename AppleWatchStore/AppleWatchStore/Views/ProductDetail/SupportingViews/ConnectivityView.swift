//
//  ConnectivityView.swift
//  AppleWatchStore
//
//  Created by Arthur Nsereko Kahwa on 6/20/24.
//

import SwiftUI

struct ConnectivityView: View {
    var body: some View {
        VStack {
            SectionHeader(title: "Connectivity")
            
            HStack {
                ForEach(0 ..< 2) { item in
                    Button(action: {}) {
                        WifiCellularView(type: .none)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(.baseMediumGrey, lineWidth: 1)
                            )
                    }
                    .buttonStyle(.plain)
                }
            }
        }
    }
}

#Preview {
    ConnectivityView()
}
