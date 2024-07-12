//
//  OptionalServices.swift
//  JohnLewisChallenge
//
//  Created by mahesh lad on 12/02/2024.
//
import Foundation
struct OptionalServices : Codable {
	let id : String?
	let associatedProductId : String?
	let title : String?
	let description : String?
	let price : String?
	let currency : String?
	let orderOnSite : Int?
	let type : String?
	let url : String?
	let customProperties : CustomProperties?

	enum CodingKeys: String, CodingKey {

		case id = "id"
		case associatedProductId = "associatedProductId"
		case title = "title"
		case description = "description"
		case price = "price"
		case currency = "currency"
		case orderOnSite = "orderOnSite"
		case type = "type"
		case url = "url"
		case customProperties = "customProperties"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		id = try values.decodeIfPresent(String.self, forKey: .id)
		associatedProductId = try values.decodeIfPresent(String.self, forKey: .associatedProductId)
		title = try values.decodeIfPresent(String.self, forKey: .title)
		description = try values.decodeIfPresent(String.self, forKey: .description)
		price = try values.decodeIfPresent(String.self, forKey: .price)
		currency = try values.decodeIfPresent(String.self, forKey: .currency)
		orderOnSite = try values.decodeIfPresent(Int.self, forKey: .orderOnSite)
		type = try values.decodeIfPresent(String.self, forKey: .type)
		url = try values.decodeIfPresent(String.self, forKey: .url)
		customProperties = try values.decodeIfPresent(CustomProperties.self, forKey: .customProperties)
	}

}
