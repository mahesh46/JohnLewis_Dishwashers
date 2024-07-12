//
//  Banners.swift
//  JohnLewisChallenge
//
//  Created by mahesh lad on 12/02/2024.
//

import Foundation
struct Banners : Codable {
	let topBannerId : String?
	let blockBannerId : String?
	let seoBannerId : String?

	enum CodingKeys: String, CodingKey {

		case topBannerId = "topBannerId"
		case blockBannerId = "blockBannerId"
		case seoBannerId = "seoBannerId"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		topBannerId = try values.decodeIfPresent(String.self, forKey: .topBannerId)
		blockBannerId = try values.decodeIfPresent(String.self, forKey: .blockBannerId)
		seoBannerId = try values.decodeIfPresent(String.self, forKey: .seoBannerId)
	}

}
