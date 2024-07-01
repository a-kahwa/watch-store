//
//  ProductDetail.swift
//  AppleWatchStore
//
//  Created by Arthur Nsereko Kahwa on 7/1/24.
//

import Foundation
import SwiftUI
import Observation

enum ProductAppleCzreType: String {
    case add
    case none
}

enum ProductCellularType {
    case none
    case wifiOnly
    case wifiAndCellular
}

@Observable
class ProductDetail {
    var selectedCaseSize: CaseSize?
    var selectedWristSSize: WristSize?
    var selectedGPSCellular: ProductCellularType = .none
    var selectedAppleCare: ProductAppleCzreType = .none
}
