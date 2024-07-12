//
//  NetworkService.swift
//  JohnLewisChallenge
//
//  Created by mahesh lad on 12/02/2024.
//

import Foundation

class NetworkService : ServiceProtocol {
   
    func fetchDataHeader() async throws -> MainModel? {
        guard let url = URL(string: Constants.productsUrlString.rawValue) else {
            print("This URL is not working!")
            throw NetworkError.badURL
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
        guard let url = URL(string: Constants.productDetailUrlString.rawValue) else {
            print("This URL is not working!")
            throw NetworkError.badURL
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
