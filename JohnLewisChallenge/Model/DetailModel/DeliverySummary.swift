//
//  DeliverySummary.swift
//  JohnLewisChallenge
//
//  Created by mahesh lad on 12/02/2024.
//

import Foundation
struct DeliverySummary : Codable {
	let deliveryType : String?
	let title : String?
	let price : String?
	let currency : String?
	let summary : String?
	let trialMessage : String?
	let newTitle : String?
	let newSummary : String?
	let newPriority : Int?
	let newOptionId : String?

	enum CodingKeys: String, CodingKey {

		case deliveryType = "deliveryType"
		case title = "title"
		case price = "price"
		case currency = "currency"
		case summary = "summary"
		case trialMessage = "trialMessage"
		case newTitle = "newTitle"
		case newSummary = "newSummary"
		case newPriority = "newPriority"
		case newOptionId = "newOptionId"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		deliveryType = try values.decodeIfPresent(String.self, forKey: .deliveryType)
		title = try values.decodeIfPresent(String.self, forKey: .title)
		price = try values.decodeIfPresent(String.self, forKey: .price)
		currency = try values.decodeIfPresent(String.self, forKey: .currency)
		summary = try values.decodeIfPresent(String.self, forKey: .summary)
		trialMessage = try values.decodeIfPresent(String.self, forKey: .trialMessage)
		newTitle = try values.decodeIfPresent(String.self, forKey: .newTitle)
		newSummary = try values.decodeIfPresent(String.self, forKey: .newSummary)
		newPriority = try values.decodeIfPresent(Int.self, forKey: .newPriority)
		newOptionId = try values.decodeIfPresent(String.self, forKey: .newOptionId)
	}

}
