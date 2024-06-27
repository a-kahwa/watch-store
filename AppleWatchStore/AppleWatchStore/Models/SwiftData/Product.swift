//
//  Product.swift
//  AppleWatchStore
//
//  Created by Arthur Nsereko Kahwa on 6/26/24.
//

import Foundation
import SwiftData

@Model
final class Product {
    @Attribute(.unique) var id: String
    let isFeatured: Bool
    let bandDisplay: String
    let bandType: String
    let series: String
    let seriesDisplay: String
    let materialDisplay: String
    let materialType: String
    let finishDisplay: String
    let finishType: String
    let bandColorType: String
    let bandColorDisplay: String
    let collection: String
    let collectionType: String
    let image: String
    let desc: String
    var isFavorite: Bool
    
    @Relationship(deleteRule: .cascade)
    var caseSizes: [CaseSize]
    
    @Relationship(deleteRule: .cascade)
    var wristSizes: [WristSize]
    
    init(product: ProductData) {
        self.id = UUID().uuidString
        self.isFeatured = product.isFeatured
        self.bandDisplay = product.bandDisplay
        self.bandType = product.bandType
        self.series = product.series
        self.seriesDisplay = product.seriesDisplay
        self.materialDisplay = product.materialDisplay
        self.materialType = product.materialType
        self.finishDisplay = product.finishDisplay
        self.finishType = product.finishType
        self.bandColorType = product.bandColorType
        self.bandColorDisplay = product.bandColorDisplay
        self.collection = product.collection
        self.collectionType = product.collectionType
        self.image = product.image
        self.desc = product.description
        self.isFavorite = product.isFavorite
        self.caseSizes = product.caseSizes.map { CaseSize(data: $0) }
        self.wristSizes = product.wristSizes.map { WristSize(data: $0) }
    }
}

extension Product {
    static var `default`: Product {
        Product(product: ProductData.default)
    }
}

extension Product {
    var displayPrice: String {
        if let value = caseSizes.first {
            return "\(value.price)"
        }
        else {
            return "n/a"
        }
    }
    
    var title: String {
        "\(materialDisplay) \(finishDisplay) Case"
    }
    
    var band: String {
        return "\(image)-l"
    }
    
    var face: String {
        return "\(materialType)-\(finishType)-l"
    }
    
    func createCartProductId(caseSize: String, wristSize: String) -> String {
        return "\(self.id)-\(caseSize)-\(wristSize)-\(self.bandColorType)"
    }
}
