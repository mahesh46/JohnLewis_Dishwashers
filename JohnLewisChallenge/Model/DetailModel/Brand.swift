//
//  Brand.swift
//  JohnLewisChallenge
//
//  Created by mahesh lad on 12/02/2024.
//

import Foundation
struct Brand : Codable {
	let name : String?
	let logo : String?

	enum CodingKeys: String, CodingKey {

		case name = "name"
		case logo = "logo"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		name = try values.decodeIfPresent(String.self, forKey: .name)
		logo = try values.decodeIfPresent(String.self, forKey: .logo)
	}

}
