//
//  VideoList.swift
//  JohnLewisChallenge
//
//  Created by mahesh lad on 12/02/2024.
//

import Foundation
struct VideosList : Codable {
	let videoType : String?
	let type : String?
	let name : String?
	let videoImageURL : String?
	let url : String?

	enum CodingKeys: String, CodingKey {

		case videoType = "videoType"
		case type = "type"
		case name = "name"
		case videoImageURL = "videoImageURL"
		case url = "url"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		videoType = try values.decodeIfPresent(String.self, forKey: .videoType)
		type = try values.decodeIfPresent(String.self, forKey: .type)
		name = try values.decodeIfPresent(String.self, forKey: .name)
		videoImageURL = try values.decodeIfPresent(String.self, forKey: .videoImageURL)
		url = try values.decodeIfPresent(String.self, forKey: .url)
	}

}
