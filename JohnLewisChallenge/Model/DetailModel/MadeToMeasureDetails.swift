//
//  MadeToMeasureDetails.swift
//  JohnLewisChallenge
//
//  Created by mahesh lad on 12/02/2024.
//

import Foundation
struct MadeToMeasureDetails : Codable {
	let type : String?
	let styles : String?

	enum CodingKeys: String, CodingKey {

		case type = "type"
		case styles = "styles"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		type = try values.decodeIfPresent(String.self, forKey: .type)
		styles = try values.decodeIfPresent(String.self, forKey: .styles)
	}

}
