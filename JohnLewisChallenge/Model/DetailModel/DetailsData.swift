//
//  DetailsData.swift
//  JohnLewisChallenge
//
//  Created by mahesh lad on 12/02/2024.
//

import Foundation
struct DetailsData : Codable{
	let productId : String?
	let bundleProducts : [String]?
	let details : DetailsHeader?
	let deliveries : [Deliveries]?
	let deliverySummary : [DeliverySummary]?
	let emailMeWhenAvailable : Bool?
	let skus : [Skus]?
	let title : String?
	let defaultSku : String?
	let storeOnly : Bool?
	let type : String?
	let ageRestriction : Int?
	let seoURL : String?
	let isFBL : Bool?
	let averageRating : Double?
	let numberOfReviews : Int?
	let price : Price?
	let code : String?
	let specialOffers : SpecialOffers?
	let displaySpecialOffer : String?
	let setDetails : SetDetails?
	let templateType : String?
	let priceBands : [String]?
	let legs : [String]?
	let swatchCategoryType : String?
	let deliveryFulfilledBy : String?
	let additionalServices : AdditionalServices?
	let media : Media?
	let setElements : [String]?
	let headingTypes : [String]?
	let moreFromRange : [String]?
	let promotionalFeatures : [PromotionalFeatures]?
	let setInformation : String?
	let specialOfferBundles : [String]?
	let fixedRelatedProducts : [String]?
	let siblingSets : [String]?
	let defaultCategory : DefaultCategory?
	let parentCategories : [ParentCategories]?
	let releaseDateTimestamp : Int?
	let crumbs : [Crumbs]?
	let seoInformation : SeoInformation?
	let isInTopNkuCategory : Bool?
	let brand : Brand?
//	let swatchAvailable : String?
	let madeToMeasureDetails : MadeToMeasureDetails?
	let isAsafShape : Bool?
	let dynamicAttributes : DynamicAttributes?
	let excludeFromLiveChat : Bool?
	let webPimProductType : String?
	let nonPromoMessage : String?
	let preorderable : Bool?

	enum CodingKeys: String, CodingKey {

		case productId = "productId"
		case bundleProducts = "bundleProducts"
		case details = "details"
		case deliveries = "deliveries"
		case deliverySummary = "deliverySummary"
		case emailMeWhenAvailable = "emailMeWhenAvailable"
		case skus = "skus"
		case title = "title"
		case defaultSku = "defaultSku"
		case storeOnly = "storeOnly"
		case type = "type"
		case ageRestriction = "ageRestriction"
		case seoURL = "seoURL"
		case isFBL = "isFBL"
		case averageRating = "averageRating"
		case numberOfReviews = "numberOfReviews"
		case price = "price"
		case code = "code"
		case specialOffers = "specialOffers"
		case displaySpecialOffer = "displaySpecialOffer"
		case setDetails = "setDetails"
		case templateType = "templateType"
		case priceBands = "priceBands"
		case legs = "legs"
		case swatchCategoryType = "swatchCategoryType"
		case deliveryFulfilledBy = "deliveryFulfilledBy"
		case additionalServices = "additionalServices"
		case media = "media"
		case setElements = "setElements"
		case headingTypes = "headingTypes"
		case moreFromRange = "moreFromRange"
		case promotionalFeatures = "promotionalFeatures"
		case setInformation = "setInformation"
		case specialOfferBundles = "specialOfferBundles"
		case fixedRelatedProducts = "fixedRelatedProducts"
		case siblingSets = "siblingSets"
		case defaultCategory = "defaultCategory"
		case parentCategories = "parentCategories"
		case releaseDateTimestamp = "releaseDateTimestamp"
		case crumbs = "crumbs"
		case seoInformation = "seoInformation"
		case isInTopNkuCategory = "isInTopNkuCategory"
		case brand = "brand"
	//	case swatchAvailable = "swatchAvailable"
		case madeToMeasureDetails = "madeToMeasureDetails"
		case isAsafShape = "isAsafShape"
		case dynamicAttributes = "dynamicAttributes"
		case excludeFromLiveChat = "excludeFromLiveChat"
		case webPimProductType = "webPimProductType"
		case nonPromoMessage = "nonPromoMessage"
		case preorderable = "preorderable"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		productId = try values.decodeIfPresent(String.self, forKey: .productId)
		bundleProducts = try values.decodeIfPresent([String].self, forKey: .bundleProducts)
		details = try values.decodeIfPresent(DetailsHeader.self, forKey: .details)
		deliveries = try values.decodeIfPresent([Deliveries].self, forKey: .deliveries)
		deliverySummary = try values.decodeIfPresent([DeliverySummary].self, forKey: .deliverySummary)
		emailMeWhenAvailable = try values.decodeIfPresent(Bool.self, forKey: .emailMeWhenAvailable)
		skus = try values.decodeIfPresent([Skus].self, forKey: .skus)
		title = try values.decodeIfPresent(String.self, forKey: .title)
		defaultSku = try values.decodeIfPresent(String.self, forKey: .defaultSku)
		storeOnly = try values.decodeIfPresent(Bool.self, forKey: .storeOnly)
		type = try values.decodeIfPresent(String.self, forKey: .type)
		ageRestriction = try values.decodeIfPresent(Int.self, forKey: .ageRestriction)
		seoURL = try values.decodeIfPresent(String.self, forKey: .seoURL)
		isFBL = try values.decodeIfPresent(Bool.self, forKey: .isFBL)
		averageRating = try values.decodeIfPresent(Double.self, forKey: .averageRating)
		numberOfReviews = try values.decodeIfPresent(Int.self, forKey: .numberOfReviews)
		price = try values.decodeIfPresent(Price.self, forKey: .price)
		code = try values.decodeIfPresent(String.self, forKey: .code)
		specialOffers = try values.decodeIfPresent(SpecialOffers.self, forKey: .specialOffers)
		displaySpecialOffer = try values.decodeIfPresent(String.self, forKey: .displaySpecialOffer)
		setDetails = try values.decodeIfPresent(SetDetails.self, forKey: .setDetails)
		templateType = try values.decodeIfPresent(String.self, forKey: .templateType)
		priceBands = try values.decodeIfPresent([String].self, forKey: .priceBands)
		legs = try values.decodeIfPresent([String].self, forKey: .legs)
		swatchCategoryType = try values.decodeIfPresent(String.self, forKey: .swatchCategoryType)
		deliveryFulfilledBy = try values.decodeIfPresent(String.self, forKey: .deliveryFulfilledBy)
		additionalServices = try values.decodeIfPresent(AdditionalServices.self, forKey: .additionalServices)
		media = try values.decodeIfPresent(Media.self, forKey: .media)
		setElements = try values.decodeIfPresent([String].self, forKey: .setElements)
		headingTypes = try values.decodeIfPresent([String].self, forKey: .headingTypes)
		moreFromRange = try values.decodeIfPresent([String].self, forKey: .moreFromRange)
		promotionalFeatures = try values.decodeIfPresent([PromotionalFeatures].self, forKey: .promotionalFeatures)
		setInformation = try values.decodeIfPresent(String.self, forKey: .setInformation)
		specialOfferBundles = try values.decodeIfPresent([String].self, forKey: .specialOfferBundles)
		fixedRelatedProducts = try values.decodeIfPresent([String].self, forKey: .fixedRelatedProducts)
		siblingSets = try values.decodeIfPresent([String].self, forKey: .siblingSets)
		defaultCategory = try values.decodeIfPresent(DefaultCategory.self, forKey: .defaultCategory)
		parentCategories = try values.decodeIfPresent([ParentCategories].self, forKey: .parentCategories)
		releaseDateTimestamp = try values.decodeIfPresent(Int.self, forKey: .releaseDateTimestamp)
		crumbs = try values.decodeIfPresent([Crumbs].self, forKey: .crumbs)
		seoInformation = try values.decodeIfPresent(SeoInformation.self, forKey: .seoInformation)
		isInTopNkuCategory = try values.decodeIfPresent(Bool.self, forKey: .isInTopNkuCategory)
		brand = try values.decodeIfPresent(Brand.self, forKey: .brand)
	//	swatchAvailable = try values.decodeIfPresent(String.self, forKey: .swatchAvailable)
		madeToMeasureDetails = try values.decodeIfPresent(MadeToMeasureDetails.self, forKey: .madeToMeasureDetails)
		isAsafShape = try values.decodeIfPresent(Bool.self, forKey: .isAsafShape)
		dynamicAttributes = try values.decodeIfPresent(DynamicAttributes.self, forKey: .dynamicAttributes)
		excludeFromLiveChat = try values.decodeIfPresent(Bool.self, forKey: .excludeFromLiveChat)
		webPimProductType = try values.decodeIfPresent(String.self, forKey: .webPimProductType)
		nonPromoMessage = try values.decodeIfPresent(String.self, forKey: .nonPromoMessage)
		preorderable = try values.decodeIfPresent(Bool.self, forKey: .preorderable)
	}

}
