//
//  DetailModel.swift
//  JohnLewisChallenge
//
//  Created by mahesh lad on 12/02/2024.
//

import Foundation
struct DetailModel : Codable {
	let detailsData : [DetailsData]?

	enum CodingKeys: String, CodingKey {

		case detailsData = "detailsData"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		detailsData = try values.decodeIfPresent([DetailsData].self, forKey: .detailsData)
	}

}
