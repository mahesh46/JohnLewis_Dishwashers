//
//  SpecialOffers.swift
//  JohnLewisChallenge
//
//  Created by mahesh lad on 12/02/2024.
//

import Foundation
struct SpecialOffers : Codable {
	let priceMatched : String?
	let offer : String?
	let customPromotionalMessage : String?
	let bundleHeadline : String?
	let customSpecialOffer : CustomSpecialOffer?

	enum CodingKeys: String, CodingKey {

		case priceMatched = "priceMatched"
		case offer = "offer"
		case customPromotionalMessage = "customPromotionalMessage"
		case bundleHeadline = "bundleHeadline"
		case customSpecialOffer = "customSpecialOffer"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		priceMatched = try values.decodeIfPresent(String.self, forKey: .priceMatched)
		offer = try values.decodeIfPresent(String.self, forKey: .offer)
		customPromotionalMessage = try values.decodeIfPresent(String.self, forKey: .customPromotionalMessage)
		bundleHeadline = try values.decodeIfPresent(String.self, forKey: .bundleHeadline)
		customSpecialOffer = try values.decodeIfPresent(CustomSpecialOffer.self, forKey: .customSpecialOffer)
	}

}
