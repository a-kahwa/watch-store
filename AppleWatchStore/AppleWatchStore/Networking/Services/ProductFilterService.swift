//
//  ProductFilterService.swift
//  AppleWatchStore
//
//  Created by Arthur Nsereko Kahwa on 6/24/24.
//

import Foundation

protocol ProductFilterServiceable {
    func fetchProducts() async -> Result<[ProductFilterData], RequestError>
}

struct ProductFilterService: HttpClient, ProductFilterServiceable {
    func fetchProducts() async -> Result<[ProductFilterData], RequestError> {
        return await request(endpoint: ProductsFilterEndPoint.all, responseModel: [ProductFilterData].self)
    }
}
