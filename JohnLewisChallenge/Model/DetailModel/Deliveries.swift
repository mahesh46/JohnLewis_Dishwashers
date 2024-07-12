//
//  Deliveries.swift
//  JohnLewisChallenge
//
//  Created by mahesh lad on 12/02/2024.
//

import Foundation
struct Deliveries : Codable {
	let deliveryType : String?
	let options : [Options]?

	enum CodingKeys: String, CodingKey {

		case deliveryType = "deliveryType"
		case options = "options"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		deliveryType = try values.decodeIfPresent(String.self, forKey: .deliveryType)
		options = try values.decodeIfPresent([Options].self, forKey: .options)
	}

}
