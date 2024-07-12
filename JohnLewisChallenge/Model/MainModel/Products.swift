//
//  Products.swift
//  JohnLewisChallenge
//
//  Created by mahesh lad on 12/02/2024.
//

import Foundation
struct Products : Codable {
	let productId : String?
	let type : String?
	let title : String?
	let htmlTitle : String?
	let code : String?
	let averageRating : Double?
	let reviews : Int?
	let price : Price?
	let image : String?
	let alternativeImageUrls : [String]?
	let displaySpecialOffer : String?
	let promoMessages : PromoMessages?
	let nonPromoMessage : String?
	let defaultSkuId : String?
	let colorSwatches : [ColorSwatches]?
	let colorSwatchSelected : Int?
	let colorWheelMessage : String?
	let outOfStock : Bool?
	let emailMeWhenAvailable : Bool?
	let availabilityMessage : String?
	let compare : Bool?
	let fabric : String?
	let swatchAvailable : Bool?
	let categoryQuickViewEnabled : Bool?
	let swatchCategoryType : String?
	let brand : String?
	let ageRestriction : Int?
	let isInStoreOnly : Bool?
	let isMadeToMeasure : Bool?
	let isBundle : Bool?
	let isProductSet : Bool?
	let promotionalFeatures : [String]?
	let features : [String]?
	let dynamicAttributes : DynamicAttributesDetail?
	let directorate : String?
	let futureRelease : Bool?
	let multiSku : Bool?
	let fabricByLength : Bool?
//	let messaging : [String]?
	let quickAddToBasket : QuickAddToBasket?
	let permanentOos : Bool?

	enum CodingKeys: String, CodingKey {

		case productId = "productId"
		case type = "type"
		case title = "title"
		case htmlTitle = "htmlTitle"
		case code = "code"
		case averageRating = "averageRating"
		case reviews = "reviews"
		case price = "price"
		case image = "image"
		case alternativeImageUrls = "alternativeImageUrls"
		case displaySpecialOffer = "displaySpecialOffer"
		case promoMessages = "promoMessages"
		case nonPromoMessage = "nonPromoMessage"
		case defaultSkuId = "defaultSkuId"
		case colorSwatches = "colorSwatches"
		case colorSwatchSelected = "colorSwatchSelected"
		case colorWheelMessage = "colorWheelMessage"
		case outOfStock = "outOfStock"
		case emailMeWhenAvailable = "emailMeWhenAvailable"
		case availabilityMessage = "availabilityMessage"
		case compare = "compare"
		case fabric = "fabric"
		case swatchAvailable = "swatchAvailable"
		case categoryQuickViewEnabled = "categoryQuickViewEnabled"
		case swatchCategoryType = "swatchCategoryType"
		case brand = "brand"
		case ageRestriction = "ageRestriction"
		case isInStoreOnly = "isInStoreOnly"
		case isMadeToMeasure = "isMadeToMeasure"
		case isBundle = "isBundle"
		case isProductSet = "isProductSet"
		case promotionalFeatures = "promotionalFeatures"
		case features = "features"
		case dynamicAttributes = "dynamicAttributes"
		case directorate = "directorate"
		case futureRelease = "futureRelease"
		case multiSku = "multiSku"
		case fabricByLength = "fabricByLength"
	//	case messaging = "messaging"
		case quickAddToBasket = "quickAddToBasket"
		case permanentOos = "permanentOos"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		productId = try values.decodeIfPresent(String.self, forKey: .productId)
		type = try values.decodeIfPresent(String.self, forKey: .type)
		title = try values.decodeIfPresent(String.self, forKey: .title)
		htmlTitle = try values.decodeIfPresent(String.self, forKey: .htmlTitle)
		code = try values.decodeIfPresent(String.self, forKey: .code)
		averageRating = try values.decodeIfPresent(Double.self, forKey: .averageRating)
		reviews = try values.decodeIfPresent(Int.self, forKey: .reviews)
		price = try values.decodeIfPresent(Price.self, forKey: .price)
		image = try values.decodeIfPresent(String.self, forKey: .image)
		alternativeImageUrls = try values.decodeIfPresent([String].self, forKey: .alternativeImageUrls)
		displaySpecialOffer = try values.decodeIfPresent(String.self, forKey: .displaySpecialOffer)
		promoMessages = try values.decodeIfPresent(PromoMessages.self, forKey: .promoMessages)
		nonPromoMessage = try values.decodeIfPresent(String.self, forKey: .nonPromoMessage)
		defaultSkuId = try values.decodeIfPresent(String.self, forKey: .defaultSkuId)
		colorSwatches = try values.decodeIfPresent([ColorSwatches].self, forKey: .colorSwatches)
		colorSwatchSelected = try values.decodeIfPresent(Int.self, forKey: .colorSwatchSelected)
		colorWheelMessage = try values.decodeIfPresent(String.self, forKey: .colorWheelMessage)
		outOfStock = try values.decodeIfPresent(Bool.self, forKey: .outOfStock)
		emailMeWhenAvailable = try values.decodeIfPresent(Bool.self, forKey: .emailMeWhenAvailable)
		availabilityMessage = try values.decodeIfPresent(String.self, forKey: .availabilityMessage)
		compare = try values.decodeIfPresent(Bool.self, forKey: .compare)
		fabric = try values.decodeIfPresent(String.self, forKey: .fabric)
		swatchAvailable = try values.decodeIfPresent(Bool.self, forKey: .swatchAvailable)
		categoryQuickViewEnabled = try values.decodeIfPresent(Bool.self, forKey: .categoryQuickViewEnabled)
		swatchCategoryType = try values.decodeIfPresent(String.self, forKey: .swatchCategoryType)
		brand = try values.decodeIfPresent(String.self, forKey: .brand)
		ageRestriction = try values.decodeIfPresent(Int.self, forKey: .ageRestriction)
		isInStoreOnly = try values.decodeIfPresent(Bool.self, forKey: .isInStoreOnly)
		isMadeToMeasure = try values.decodeIfPresent(Bool.self, forKey: .isMadeToMeasure)
		isBundle = try values.decodeIfPresent(Bool.self, forKey: .isBundle)
		isProductSet = try values.decodeIfPresent(Bool.self, forKey: .isProductSet)
		promotionalFeatures = try values.decodeIfPresent([String].self, forKey: .promotionalFeatures)
		features = try values.decodeIfPresent([String].self, forKey: .features)
		dynamicAttributes = try values.decodeIfPresent(DynamicAttributesDetail.self, forKey: .dynamicAttributes)
		directorate = try values.decodeIfPresent(String.self, forKey: .directorate)
		futureRelease = try values.decodeIfPresent(Bool.self, forKey: .futureRelease)
		multiSku = try values.decodeIfPresent(Bool.self, forKey: .multiSku)
		fabricByLength = try values.decodeIfPresent(Bool.self, forKey: .fabricByLength)
	//	messaging = try values.decodeIfPresent([String].self, forKey: .messaging)
		quickAddToBasket = try values.decodeIfPresent(QuickAddToBasket.self, forKey: .quickAddToBasket)
		permanentOos = try values.decodeIfPresent(Bool.self, forKey: .permanentOos)
	}

}
