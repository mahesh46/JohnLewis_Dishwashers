///
//  CustomSpecialOffer.swift
//  JohnLewisChallenge
//
//  Created by mahesh lad on 12/02/2024.
//

import Foundation
struct CustomSpecialOffer : Codable {

//	enum CodingKeys: String, CodingKey {
//
//	}

	init(from decoder: Decoder) throws {
        _ = try decoder.container(keyedBy: CodingKeys.self)
	}

}
