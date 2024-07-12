//
//  Facets.swift
//  JohnLewisChallenge
//
//  Created by mahesh lad on 12/02/2024.
//

import Foundation
struct Facets : Codable {
	let dimensionName : String?
	let name : String?
	let type : String?
	let tooltip : String?
	let filterTypes : [String]?
	let details : [Details]?

	enum CodingKeys: String, CodingKey {

		case dimensionName = "dimensionName"
		case name = "name"
		case type = "type"
		case tooltip = "tooltip"
		case filterTypes = "filterTypes"
		case details = "details"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		dimensionName = try values.decodeIfPresent(String.self, forKey: .dimensionName)
		name = try values.decodeIfPresent(String.self, forKey: .name)
		type = try values.decodeIfPresent(String.self, forKey: .type)
		tooltip = try values.decodeIfPresent(String.self, forKey: .tooltip)
		filterTypes = try values.decodeIfPresent([String].self, forKey: .filterTypes)
		details = try values.decodeIfPresent([Details].self, forKey: .details)
	}

}
