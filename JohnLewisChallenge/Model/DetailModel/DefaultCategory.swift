//
//  DefaultCategory.swift
//  JohnLewisChallenge
//
//  Created by mahesh lad on 12/02/2024.
//

import Foundation
struct DefaultCategory : Codable {
	let id : String?
	let name : String?

	enum CodingKeys: String, CodingKey {

		case id = "id"
		case name = "name"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		id = try values.decodeIfPresent(String.self, forKey: .id)
		name = try values.decodeIfPresent(String.self, forKey: .name)
	}

}
