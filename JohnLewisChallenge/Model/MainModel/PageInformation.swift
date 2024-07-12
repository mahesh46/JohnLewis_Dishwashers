//
//  PageInformation.swift
//  JohnLewisChallenge
//
//  Created by mahesh lad on 12/02/2024.
//

import Foundation
struct PageInformation : Codable {
	let title : String?
	let heading : String?
	let description : String?
	let noIndex : Bool?
	let noFollow : Bool?

	enum CodingKeys: String, CodingKey {

		case title = "title"
		case heading = "heading"
		case description = "description"
		case noIndex = "noIndex"
		case noFollow = "noFollow"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		title = try values.decodeIfPresent(String.self, forKey: .title)
		heading = try values.decodeIfPresent(String.self, forKey: .heading)
		description = try values.decodeIfPresent(String.self, forKey: .description)
		noIndex = try values.decodeIfPresent(Bool.self, forKey: .noIndex)
		noFollow = try values.decodeIfPresent(Bool.self, forKey: .noFollow)
	}

}
