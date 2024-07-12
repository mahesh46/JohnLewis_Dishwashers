//
//  PromotionalFeatures.swift
//  JohnLewisChallenge
//
//  Created by mahesh lad on 12/02/2024.
//

import Foundation
struct PromotionalFeatures : Codable {
	let title : String?
	let iconUrl : String?
	let linkUrl : String?
	let description : String?
	let longDescription : String?

	enum CodingKeys: String, CodingKey {

		case title = "title"
		case iconUrl = "iconUrl"
		case linkUrl = "linkUrl"
		case description = "description"
		case longDescription = "longDescription"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		title = try values.decodeIfPresent(String.self, forKey: .title)
		iconUrl = try values.decodeIfPresent(String.self, forKey: .iconUrl)
		linkUrl = try values.decodeIfPresent(String.self, forKey: .linkUrl)
		description = try values.decodeIfPresent(String.self, forKey: .description)
		longDescription = try values.decodeIfPresent(String.self, forKey: .longDescription)
	}

}
