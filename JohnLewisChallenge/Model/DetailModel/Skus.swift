//
//  Skus.swift
//  JohnLewisChallenge
//
//  Created by mahesh lad on 12/02/2024.
//

import Foundation
struct Skus : Codable {
	let id : String?
	let skuTitle : String?
	let shortSkuTitle : String?
	let color : String?
	let size : String?
	let sizeHeadline : String?
	let swatchUrl : String?
	let availability : Availability?
	let price : Price?
	let code : String?
	let leadTime : String?
	let d2cDeliveryLeadTime : String?
	let media : Media?
	let brandName : String?
	let unitPriceInfo : UnitPriceInfo?
	let priceBand : String?
	let dynamicAttributes : DynamicAttributes?
	let ticketType : String?
	let mainframeProductId : String?

	enum CodingKeys: String, CodingKey {

		case id = "id"
		case skuTitle = "skuTitle"
		case shortSkuTitle = "shortSkuTitle"
		case color = "color"
		case size = "size"
		case sizeHeadline = "sizeHeadline"
		case swatchUrl = "swatchUrl"
		case availability = "availability"
		case price = "price"
		case code = "code"
		case leadTime = "leadTime"
		case d2cDeliveryLeadTime = "d2cDeliveryLeadTime"
		case media = "media"
		case brandName = "brandName"
		case unitPriceInfo = "unitPriceInfo"
		case priceBand = "priceBand"
		case dynamicAttributes = "dynamicAttributes"
		case ticketType = "ticketType"
		case mainframeProductId = "mainframeProductId"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		id = try values.decodeIfPresent(String.self, forKey: .id)
		skuTitle = try values.decodeIfPresent(String.self, forKey: .skuTitle)
		shortSkuTitle = try values.decodeIfPresent(String.self, forKey: .shortSkuTitle)
		color = try values.decodeIfPresent(String.self, forKey: .color)
		size = try values.decodeIfPresent(String.self, forKey: .size)
		sizeHeadline = try values.decodeIfPresent(String.self, forKey: .sizeHeadline)
		swatchUrl = try values.decodeIfPresent(String.self, forKey: .swatchUrl)
		availability = try values.decodeIfPresent(Availability.self, forKey: .availability)
		price = try values.decodeIfPresent(Price.self, forKey: .price)
		code = try values.decodeIfPresent(String.self, forKey: .code)
		leadTime = try values.decodeIfPresent(String.self, forKey: .leadTime)
		d2cDeliveryLeadTime = try values.decodeIfPresent(String.self, forKey: .d2cDeliveryLeadTime)
		media = try values.decodeIfPresent(Media.self, forKey: .media)
		brandName = try values.decodeIfPresent(String.self, forKey: .brandName)
		unitPriceInfo = try values.decodeIfPresent(UnitPriceInfo.self, forKey: .unitPriceInfo)
		priceBand = try values.decodeIfPresent(String.self, forKey: .priceBand)
		dynamicAttributes = try values.decodeIfPresent(DynamicAttributes.self, forKey: .dynamicAttributes)
		ticketType = try values.decodeIfPresent(String.self, forKey: .ticketType)
		mainframeProductId = try values.decodeIfPresent(String.self, forKey: .mainframeProductId)
	}

}
