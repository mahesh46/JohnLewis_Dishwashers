//
//  Media.swift
//  JohnLewisChallenge
//
//  Created by mahesh lad on 12/02/2024.
//

import Foundation
struct Media : Codable {
	let images : Images?
	let threeSixtyImages : ThreeSixtyImages?
	let videos : Videos?

	enum CodingKeys: String, CodingKey {

		case images = "images"
		case threeSixtyImages = "360images"
		case videos = "videos"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		images = try values.decodeIfPresent(Images.self, forKey: .images)
        threeSixtyImages = try values.decodeIfPresent(ThreeSixtyImages.self, forKey: .threeSixtyImages)
		videos = try values.decodeIfPresent(Videos.self, forKey: .videos)
	}

}
