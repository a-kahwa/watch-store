//
//  FavoriteProductTip.swift
//  AppleWatchStore
//
//  Created by Arthur Nsereko Kahwa on 7/5/24.
//

import Foundation
import SwiftUI
import TipKit

struct FavoriteProductTip: Tip {
    @Parameter
    static var showTip: Bool = false
    
    var title: Text {
        Text("Save as a favorite")
    }
    
    var message: Text? {
        Text("Your favorite product always appears in the favorites tab")
    }
    
    var image: Image? {
        Image(systemName: "heart")
    }
}
