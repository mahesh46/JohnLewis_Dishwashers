//
//  Videos.swift
//  JohnLewisChallenge
//
//  Created by mahesh lad on 12/02/2024.
//

import Foundation
struct Videos : Codable {
	let videosList : [VideosList]?
	let videoHost : String?
	let videoImagePath : String?
	let prod_vid_thmb : String?
	let videoHeight : String?
	let videoWidth : String?
	let imgAltText : String?

	enum CodingKeys: String, CodingKey {

		case videosList = "videosList"
		case videoHost = "videoHost"
		case videoImagePath = "videoImagePath"
		case prod_vid_thmb = "prod_vid_thmb"
		case videoHeight = "videoHeight"
		case videoWidth = "videoWidth"
		case imgAltText = "imgAltText"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		videosList = try values.decodeIfPresent([VideosList].self, forKey: .videosList)
		videoHost = try values.decodeIfPresent(String.self, forKey: .videoHost)
		videoImagePath = try values.decodeIfPresent(String.self, forKey: .videoImagePath)
		prod_vid_thmb = try values.decodeIfPresent(String.self, forKey: .prod_vid_thmb)
		videoHeight = try values.decodeIfPresent(String.self, forKey: .videoHeight)
		videoWidth = try values.decodeIfPresent(String.self, forKey: .videoWidth)
		imgAltText = try values.decodeIfPresent(String.self, forKey: .imgAltText)
	}

}
