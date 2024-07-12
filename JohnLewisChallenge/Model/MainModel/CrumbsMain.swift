//
//  CrumbsMain.swift
//  JohnLewisChallenge
//
//  Created by mahesh lad on 12/02/2024.
//

import Foundation
struct CrumbsMain : Codable {
	let url : String?
	let clickable : String?
	let displayName : String?
	let type : String?
	let item : String?

	enum CodingKeys: String, CodingKey {

		case url = "url"
		case clickable = "clickable"
		case displayName = "displayName"
		case type = "type"
		case item = "item"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		url = try values.decodeIfPresent(String.self, forKey: .url)
		clickable = try values.decodeIfPresent(String.self, forKey: .clickable)
		displayName = try values.decodeIfPresent(String.self, forKey: .displayName)
		type = try values.decodeIfPresent(String.self, forKey: .type)
		item = try values.decodeIfPresent(String.self, forKey: .item)
	}

}
