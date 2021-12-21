//
//  FactManager.swift
//  Dog Facts
//
//  Created by Zachary Buffington on 12/20/21.
//

import Foundation

class FactManager {
    func fetchFacts() async throws -> [Fact] {
        // Url
        let url = URL(string: "https://dog-facts-api.herokuapp.com/api/v1/resources/dogs/all")!
        
        // request
        let response = try await URLSession.shared.data(from: url)
        
        // data
        let data = response.0
        
        //decoding
        let decoder = JSONDecoder()
        let facts = try decoder.decode([Fact].self, from: data)
        return facts
        
    }
    
    
}
