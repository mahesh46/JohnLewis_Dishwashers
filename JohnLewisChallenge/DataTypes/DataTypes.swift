//
//  DataTypes.swift
//  JohnLewisChallenge
//
//  Created by mahesh lad on 12/02/2024.
//

import Foundation

enum NetworkError: Error {
    case badURL
    case badData
}

enum Constants: String {
    case productsUrlString = "https://gitlab.com/jlp-jobs/jlp-ios-engineer-test/-/raw/main/mockData/data.json?ref_type=heads"
    case productDetailUrlString = "https://gitlab.com/jlp-jobs/jlp-ios-engineer-test/-/raw/main/mockData/data2.json?ref_type=heads"
}
