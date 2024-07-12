//
//  Images.swift
//  JohnLewisChallenge
//
//  Created by mahesh lad on 12/02/2024.
//

import Foundation
struct Images : Codable {
	let altText : String?
	let urls : [String]?

	enum CodingKeys: String, CodingKey {

		case altText = "altText"
		case urls = "urls"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		altText = try values.decodeIfPresent(String.self, forKey: .altText)
		urls = try values.decodeIfPresent([String].self, forKey: .urls)
	}

}
