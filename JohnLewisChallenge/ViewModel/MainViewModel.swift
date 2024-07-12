//
//  HeaderViewModel.swift
//  JohnLewisChallenge
//
//  Created by mahesh lad on 12/02/2024.
//

import Foundation
import SwiftUI

@MainActor
class MainViewModel: ObservableObject{
    var service: ServiceProtocol!
    
    init(service: ServiceProtocol) {
        self.service = service
    }
    
    @Published var mainModel : MainModel?
    @Published var products:[Products]?
    @Published var columns = [GridItem(.fixed(400), spacing: 1)]
    
    func getMainProducts() async throws {
        do {
            let mainModel = try await service.fetchDataHeader()
            self.mainModel = mainModel
            self.products = mainModel?.products
        } catch let error {
            print(error.localizedDescription)
        }
    }
   
    func updateCloumns(columns: [GridItem] ){
        self.columns = columns
    }
}
