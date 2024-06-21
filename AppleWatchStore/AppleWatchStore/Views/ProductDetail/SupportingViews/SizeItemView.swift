//
//  SizeItemView.swift
//  AppleWatchStore
//
//  Created by Arthur Nsereko Kahwa on 6/20/24.
//

import SwiftUI

struct SizeItemView: View {
    var body: some View {
        HStack(alignment: .lastTextBaseline) {
            Text("49mm")
                .condensed(.bold, size: 24)
            Spacer()
            
            Group {
                Text("€").ultraLight()
                
                Text("888").heavy()
            }
        }
        .padding()
    }
}

#Preview {
    SizeItemView()
}
