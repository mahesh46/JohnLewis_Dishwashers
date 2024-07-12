//
//  CustomProperties.swift
//  JohnLewisChallenge
//
//  Created by mahesh lad on 12/02/2024.
//

import Foundation
struct CustomProperties : Codable {
	let warrantyCustomGeneric : String?
	let warrantyCustomTooltip : String?
	let warrantyCustomDescription : String?
	let warrantyCustomConfirm : String?

	enum CodingKeys: String, CodingKey {

		case warrantyCustomGeneric = "warrantyCustomGeneric"
		case warrantyCustomTooltip = "warrantyCustomTooltip"
		case warrantyCustomDescription = "warrantyCustomDescription"
		case warrantyCustomConfirm = "warrantyCustomConfirm"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		warrantyCustomGeneric = try values.decodeIfPresent(String.self, forKey: .warrantyCustomGeneric)
		warrantyCustomTooltip = try values.decodeIfPresent(String.self, forKey: .warrantyCustomTooltip)
		warrantyCustomDescription = try values.decodeIfPresent(String.self, forKey: .warrantyCustomDescription)
		warrantyCustomConfirm = try values.decodeIfPresent(String.self, forKey: .warrantyCustomConfirm)
	}

}
