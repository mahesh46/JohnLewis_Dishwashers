//
//  QuckAddToBasket.swift
//  JohnLewisChallenge
//
//  Created by mahesh lad on 12/02/2024.
//

import Foundation
struct QuickAddToBasket : Codable {
	let showPermanentOos : Bool?
	let showMoreInfoRedirectPDP : Bool?
	let simpleAddToBasket : Bool?
	let simpleMobileEmailMe : Bool?
	let showEmailMeTriggerQV : Bool?
	let showChooseSizeTriggerQV : Bool?

	enum CodingKeys: String, CodingKey {

		case showPermanentOos = "showPermanentOos"
		case showMoreInfoRedirectPDP = "showMoreInfoRedirectPDP"
		case simpleAddToBasket = "simpleAddToBasket"
		case simpleMobileEmailMe = "simpleMobileEmailMe"
		case showEmailMeTriggerQV = "showEmailMeTriggerQV"
		case showChooseSizeTriggerQV = "showChooseSizeTriggerQV"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		showPermanentOos = try values.decodeIfPresent(Bool.self, forKey: .showPermanentOos)
		showMoreInfoRedirectPDP = try values.decodeIfPresent(Bool.self, forKey: .showMoreInfoRedirectPDP)
		simpleAddToBasket = try values.decodeIfPresent(Bool.self, forKey: .simpleAddToBasket)
		simpleMobileEmailMe = try values.decodeIfPresent(Bool.self, forKey: .simpleMobileEmailMe)
		showEmailMeTriggerQV = try values.decodeIfPresent(Bool.self, forKey: .showEmailMeTriggerQV)
		showChooseSizeTriggerQV = try values.decodeIfPresent(Bool.self, forKey: .showChooseSizeTriggerQV)
	}

}
