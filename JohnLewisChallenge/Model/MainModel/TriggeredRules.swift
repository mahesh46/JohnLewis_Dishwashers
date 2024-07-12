//
//  TriggeredRules.swift
//  JohnLewisChallenge
//
//  Created by mahesh lad on 12/02/2024.
//

import Foundation
struct TriggeredRules : Codable {
	let dynamic : String?
	let seo : String?

	enum CodingKeys: String, CodingKey {

		case dynamic = "dynamic"
		case seo = "seo"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		dynamic = try values.decodeIfPresent(String.self, forKey: .dynamic)
		seo = try values.decodeIfPresent(String.self, forKey: .seo)
	}

}
