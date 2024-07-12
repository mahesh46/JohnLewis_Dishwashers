//
//  DetailsHeader.swift
//  JohnLewisChallenge
//
//  Created by mahesh lad on 12/02/2024.
//

import Foundation
struct DetailsHeader : Codable {
	let returns : String?
	let returnsHeadline : String?
	let termsAndConditions : String?
	let productInformation : String?
	let features : [Features]?
	let careGuide : [String]?
//	let featuredArticles : [String]?
	let editorsNotes : String?
	let buyingGuides : [BuyingGuides]?
	let sizeGuides : [String]?
	let weLikeItBecause : String?

	enum CodingKeys: String, CodingKey {

		case returns = "returns"
		case returnsHeadline = "returnsHeadline"
		case termsAndConditions = "termsAndConditions"
		case productInformation = "productInformation"
		case features = "features"
		case careGuide = "careGuide"
	//	case featuredArticles = "featuredArticles"
		case editorsNotes = "editorsNotes"
		case buyingGuides = "buyingGuides"
		case sizeGuides = "sizeGuides"
		case weLikeItBecause = "weLikeItBecause"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		returns = try values.decodeIfPresent(String.self, forKey: .returns)
		returnsHeadline = try values.decodeIfPresent(String.self, forKey: .returnsHeadline)
		termsAndConditions = try values.decodeIfPresent(String.self, forKey: .termsAndConditions)
		productInformation = try values.decodeIfPresent(String.self, forKey: .productInformation)
		features = try values.decodeIfPresent([Features].self, forKey: .features)
		careGuide = try values.decodeIfPresent([String].self, forKey: .careGuide)
	//	featuredArticles = try values.decodeIfPresent([String].self, forKey: .featuredArticles)
		editorsNotes = try values.decodeIfPresent(String.self, forKey: .editorsNotes)
		buyingGuides = try values.decodeIfPresent([BuyingGuides].self, forKey: .buyingGuides)
		sizeGuides = try values.decodeIfPresent([String].self, forKey: .sizeGuides)
		weLikeItBecause = try values.decodeIfPresent(String.self, forKey: .weLikeItBecause)
	}

}
