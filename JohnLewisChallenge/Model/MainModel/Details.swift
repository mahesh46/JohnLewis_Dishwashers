//
//  Details.swift
//  JohnLewisChallenge
//
//  Created by mahesh lad on 12/02/2024.
//

import Foundation
struct Details : Codable {
	let facetId : String?
	let label : String?
	let qty : String?
	let color : String?
	let colorSwatchUrl : String?
	let isSelected : String?

	enum CodingKeys: String, CodingKey {

		case facetId = "facetId"
		case label = "label"
		case qty = "qty"
		case color = "color"
		case colorSwatchUrl = "colorSwatchUrl"
		case isSelected = "isSelected"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		facetId = try values.decodeIfPresent(String.self, forKey: .facetId)
		label = try values.decodeIfPresent(String.self, forKey: .label)
		qty = try values.decodeIfPresent(String.self, forKey: .qty)
		color = try values.decodeIfPresent(String.self, forKey: .color)
		colorSwatchUrl = try values.decodeIfPresent(String.self, forKey: .colorSwatchUrl)
		isSelected = try values.decodeIfPresent(String.self, forKey: .isSelected)
	}

}
