//
//  ColorSwatches.swift
//  JohnLewisChallenge
//
//  Created by mahesh lad on 12/02/2024.
//
import Foundation
struct ColorSwatches : Codable {
	let color : String?
	let basicColor : String?
	let colorSwatchUrl : String?
	let imageUrl : String?
	let isAvailable : Bool?
	let skuId : String?

	enum CodingKeys: String, CodingKey {

		case color = "color"
		case basicColor = "basicColor"
		case colorSwatchUrl = "colorSwatchUrl"
		case imageUrl = "imageUrl"
		case isAvailable = "isAvailable"
		case skuId = "skuId"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		color = try values.decodeIfPresent(String.self, forKey: .color)
		basicColor = try values.decodeIfPresent(String.self, forKey: .basicColor)
		colorSwatchUrl = try values.decodeIfPresent(String.self, forKey: .colorSwatchUrl)
		imageUrl = try values.decodeIfPresent(String.self, forKey: .imageUrl)
		isAvailable = try values.decodeIfPresent(Bool.self, forKey: .isAvailable)
		skuId = try values.decodeIfPresent(String.self, forKey: .skuId)
	}

}
