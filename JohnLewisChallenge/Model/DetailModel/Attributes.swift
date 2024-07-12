//
//  Attributes.swift
//  JohnLewisChallenge
//
//  Created by mahesh lad on 12/02/2024.
//

import Foundation
struct Attributes : Codable, Identifiable {
	let value : String?
//	let valuesX : [String]?
	let multivalued : Bool?
	let id : String?
	let name : String?
	let toolTip : String?
	let uom : String?

	enum CodingKeys: String, CodingKey {

		case value = "value"
	//	case valuesX = "values"
		case multivalued = "multivalued"
		case id = "id"
		case name = "name"
		case toolTip = "toolTip"
		case uom = "uom"
	}

	init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
		value = try values.decodeIfPresent(String.self, forKey: .value)
	//	valuesX = try values.decodeIfPresent([String].self, forKey: .valuesX)
		multivalued = try values.decodeIfPresent(Bool.self, forKey: .multivalued)
		id = try values.decodeIfPresent(String.self, forKey: .id)
		name = try values.decodeIfPresent(String.self, forKey: .name)
		toolTip = try values.decodeIfPresent(String.self, forKey: .toolTip)
		uom = try values.decodeIfPresent(String.self, forKey: .uom)
	}

}
