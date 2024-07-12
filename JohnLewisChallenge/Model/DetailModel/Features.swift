//
//  Features.swift
//  JohnLewisChallenge
//
//  Created by mahesh lad on 12/02/2024.
//

import Foundation
struct Features : Codable {
	let groupName : String?
	let attributes : [Attributes]?

	enum CodingKeys: String, CodingKey {

		case groupName = "groupName"
		case attributes = "attributes"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		groupName = try values.decodeIfPresent(String.self, forKey: .groupName)
		attributes = try values.decodeIfPresent([Attributes].self, forKey: .attributes)
	}

}
