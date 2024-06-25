//
//  DataManager.swift
//  AppleWatchStore
//
//  Created by Arthur Nsereko Kahwa on 6/25/24.
//

import Foundation
import Observation

@Observable
final class DataManager {
    var service = ProductService()
    var filterService = ProductFilterService()
    
    var productData = [ProductData]()
    var filterData = [ProductFilterData]()
    
    func initializeData() async {
        do {
            productData = try await fetchProducts() ?? []
            filterData = try await fetchFilterDat() ?? []
            
            dump(productData)
            dump(filterData)
        }
        catch {
            debugPrint("❌ unable to get roduct r filter data: \(error)")
        }
    }
    
    func fetchProducts() async throws -> [ProductData]? {
        var products: [ProductData] = []
        var results = await service.fetchProducts()
        
        switch results {
        case .success(let result):
            products = result
            return products
            
        case .failure(let error):
            print("❌ error: \(error.localizedDescription)")
            dump(error)
            
            return []
        }
    }
    
    func fetchFilterDat() async throws -> [ProductFilterData]? {
        var filters: [ProductFilterData] = []
        var results = await filterService.fetchProductFilters()
        
        switch results {
        case .success(let result):
            filters = result
            return filters
            
        case .failure(let error):
            print("❌ error: \(error.localizedDescription)")
            
            return []
        }

    }
}
