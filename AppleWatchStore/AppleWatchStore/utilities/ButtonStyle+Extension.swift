//
//  ButtonStyle+Extension.swift
//  AppleWatchStore
//
//  Created by Arthur Nsereko Kahwa on 6/12/24.
//

import SwiftUI

extension ButtonStyle where Self == CustomButtonStyle {
    static var customBorder: Self {
        return .init(radius: 4,
                     background: Color(.baseLightGrey))
    }
    
    static var borderedBlack: Self {
        return .init(radius: 4,
                     background: Color(.baseBlack))
    }
}
