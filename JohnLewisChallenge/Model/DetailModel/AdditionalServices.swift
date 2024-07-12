//
//  AdditionalServices.swift
//  JohnLewisChallenge
//
//  Created by mahesh lad on 12/02/2024.
//

import Foundation
struct AdditionalServices : Codable {
	let includedServices : [String]?
	let optionalServices : [OptionalServices]?

	enum CodingKeys: String, CodingKey {

		case includedServices = "includedServices"
		case optionalServices = "optionalServices"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		includedServices = try values.decodeIfPresent([String].self, forKey: .includedServices)
		optionalServices = try values.decodeIfPresent([OptionalServices].self, forKey: .optionalServices)
	}

}
