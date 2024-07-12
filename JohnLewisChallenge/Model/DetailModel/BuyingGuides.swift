//
//  BuyingGuides.swift
//  JohnLewisChallenge
//
//  Created by mahesh lad on 12/02/2024.
//

import Foundation
struct BuyingGuides : Codable {
	let title : String?
	let image : String?
	let linkUrl : String?
	let linkText : String?
	let longDescription : String?

	enum CodingKeys: String, CodingKey {

		case title = "title"
		case image = "image"
		case linkUrl = "linkUrl"
		case linkText = "linkText"
		case longDescription = "longDescription"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		title = try values.decodeIfPresent(String.self, forKey: .title)
		image = try values.decodeIfPresent(String.self, forKey: .image)
		linkUrl = try values.decodeIfPresent(String.self, forKey: .linkUrl)
		linkText = try values.decodeIfPresent(String.self, forKey: .linkText)
		longDescription = try values.decodeIfPresent(String.self, forKey: .longDescription)
	}

}
