//
//  SeoiInformationMain.swift
//  JohnLewisChallenge
//
//  Created by mahesh lad on 12/02/2024.
//

import Foundation
struct SeoInformationMain : Codable {
	let description : String?
	let noIndex : Bool?

	enum CodingKeys: String, CodingKey {

		case description = "description"
		case noIndex = "noIndex"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		description = try values.decodeIfPresent(String.self, forKey: .description)
		noIndex = try values.decodeIfPresent(Bool.self, forKey: .noIndex)
	}

}
