//
//  Crumbs.swift
//  JohnLewisChallenge
//
//  Created by mahesh lad on 12/02/2024.
//

import Foundation
struct Crumbs : Codable {
	let type : String?
	let displayName : String?
	let item : String?
	let clickable : String?

	enum CodingKeys: String, CodingKey {

		case type = "type"
		case displayName = "displayName"
		case item = "item"
		case clickable = "clickable"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		type = try values.decodeIfPresent(String.self, forKey: .type)
		displayName = try values.decodeIfPresent(String.self, forKey: .displayName)
		item = try values.decodeIfPresent(String.self, forKey: .item)
		clickable = try values.decodeIfPresent(String.self, forKey: .clickable)
	}

}
