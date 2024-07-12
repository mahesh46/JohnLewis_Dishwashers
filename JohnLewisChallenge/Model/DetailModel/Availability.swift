//
//  Availability.swift
//  JohnLewisChallenge
//
//  Created by mahesh lad on 12/02/2024.
//
import Foundation
struct Availability : Codable {
	let stockLevel : Int?
	let availabilityStatus : String?
	let message : String?

	enum CodingKeys: String, CodingKey {

		case stockLevel = "stockLevel"
		case availabilityStatus = "availabilityStatus"
		case message = "message"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		stockLevel = try values.decodeIfPresent(Int.self, forKey: .stockLevel)
		availabilityStatus = try values.decodeIfPresent(String.self, forKey: .availabilityStatus)
		message = try values.decodeIfPresent(String.self, forKey: .message)
	}

}
