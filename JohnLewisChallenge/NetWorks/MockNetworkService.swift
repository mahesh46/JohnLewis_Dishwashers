//
//  MockNetworkService.swift
//  JohnLewisChallenge
//
//  Created by mahesh lad on 15/02/2024.
//

import Foundation

class MockNetworkService : ServiceProtocol {
   
    
    func fetchDataHeader() async throws -> MainModel? {
        guard let url = Bundle.main.url(forResource: "data", withExtension: "json")
        else {
            print("json file not found")
            throw NetworkError.badData
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
      
            if let decodedResponse = try? JSONDecoder().decode(MainModel.self, from: data) {
                return decodedResponse
            }
        } catch {
            print("These data are not valid")
            throw NetworkError.badData
        }
        return nil
    }
    
    func fetchDataDetail(productId: String) async throws -> DetailModel? {
        guard let url = Bundle.main.url(forResource: "data2", withExtension: "json")
        else {
            print("json file not found")
            throw NetworkError.badData
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
           
            if let decodedResponse = try? JSONDecoder().decode(DetailModel.self, from: data) {
                return decodedResponse
            }
        } catch {
            print("These data are not valid")
            throw NetworkError.badData
        }
        return nil
    }
    
}
