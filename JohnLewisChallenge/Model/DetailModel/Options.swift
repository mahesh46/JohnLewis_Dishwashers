//
//  Options.swift
//  JohnLewisChallenge
//
//  Created by mahesh lad on 12/02/2024.
//

import Foundation
struct Options : Codable {
	let id : String?
	let price : String?
	let currency : String?
	let shortDescription : String?
	let standardDescription : String?
	let date : String?
	let dateMessage : String?
	let trialMessage : String?
	let isApprovedSupplier : Bool?
	let leadTime : Int?
	let cutOffTime : Int?
	let newShortDescription : String?
	let newStandardDescription : String?
	let newPriority : Int?

	enum CodingKeys: String, CodingKey {

		case id = "id"
		case price = "price"
		case currency = "currency"
		case shortDescription = "shortDescription"
		case standardDescription = "standardDescription"
		case date = "date"
		case dateMessage = "dateMessage"
		case trialMessage = "trialMessage"
		case isApprovedSupplier = "isApprovedSupplier"
		case leadTime = "leadTime"
		case cutOffTime = "cutOffTime"
		case newShortDescription = "newShortDescription"
		case newStandardDescription = "newStandardDescription"
		case newPriority = "newPriority"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		id = try values.decodeIfPresent(String.self, forKey: .id)
		price = try values.decodeIfPresent(String.self, forKey: .price)
		currency = try values.decodeIfPresent(String.self, forKey: .currency)
		shortDescription = try values.decodeIfPresent(String.self, forKey: .shortDescription)
		standardDescription = try values.decodeIfPresent(String.self, forKey: .standardDescription)
		date = try values.decodeIfPresent(String.self, forKey: .date)
		dateMessage = try values.decodeIfPresent(String.self, forKey: .dateMessage)
		trialMessage = try values.decodeIfPresent(String.self, forKey: .trialMessage)
		isApprovedSupplier = try values.decodeIfPresent(Bool.self, forKey: .isApprovedSupplier)
		leadTime = try values.decodeIfPresent(Int.self, forKey: .leadTime)
		cutOffTime = try values.decodeIfPresent(Int.self, forKey: .cutOffTime)
		newShortDescription = try values.decodeIfPresent(String.self, forKey: .newShortDescription)
		newStandardDescription = try values.decodeIfPresent(String.self, forKey: .newStandardDescription)
		newPriority = try values.decodeIfPresent(Int.self, forKey: .newPriority)
	}

}
