//
//  ProductLayoutTip.swift
//  AppleWatchStore
//
//  Created by Arthur Nsereko Kahwa on 7/8/24.
//

import Foundation
import TipKit

struct ProductLayoutTip: Tip {
    var title: Text {
        Text("Switching Layouts")
    }
    
    var message: Text {
        Text("You can choose to switch layouts by toggling the button")
    }
    
    var image: Image? {
        Image(systemName: "rectangle.grid.1x2.fill")
    }
    
    var actions: [Action] {
        [
            Tip.Action(id: "next-action",
                       title: "Next Tip")
        ]
    }
}
