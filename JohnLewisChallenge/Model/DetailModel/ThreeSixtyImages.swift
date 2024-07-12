//
//  ThreeSixtyImages.swift
//  JohnLewisChallenge
//
//  Created by mahesh lad on 12/02/2024.
//

import Foundation
struct ThreeSixtyImages : Codable {
	let swfUrl : String?
	let urls : [String]?

	enum CodingKeys: String, CodingKey {

		case swfUrl = "swfUrl"
		case urls = "urls"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		swfUrl = try values.decodeIfPresent(String.self, forKey: .swfUrl)
		urls = try values.decodeIfPresent([String].self, forKey: .urls)
	}

}
