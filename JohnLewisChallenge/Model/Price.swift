//
//  Price.swift
//  JohnLewisChallenge
//
//  Created by mahesh lad on 12/02/2024.
//

import Foundation
struct Price : Codable {
	let was : String?
	let then1 : String?
	let then2 : String?
	let now : String?
	let uom : String?
	let currency : String?

	enum CodingKeys: String, CodingKey {

		case was = "was"
		case then1 = "then1"
		case then2 = "then2"
		case now = "now"
		case uom = "uom"
		case currency = "currency"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		was = try values.decodeIfPresent(String.self, forKey: .was)
		then1 = try values.decodeIfPresent(String.self, forKey: .then1)
		then2 = try values.decodeIfPresent(String.self, forKey: .then2)
		now = try values.decodeIfPresent(String.self, forKey: .now)
		uom = try values.decodeIfPresent(String.self, forKey: .uom)
		currency = try values.decodeIfPresent(String.self, forKey: .currency)
	}

}
