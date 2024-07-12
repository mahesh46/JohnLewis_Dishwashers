//
//  ServiceProtocol.swift
//  JohnLewisChallenge
//
//  Created by mahesh lad on 15/02/2024.
//

import Foundation

protocol ServiceProtocol {
    func fetchDataHeader() async throws -> MainModel?
    func fetchDataDetail(productId: String) async throws -> DetailModel? 
}
