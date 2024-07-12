//
//  MainModel.swift
//  JohnLewisChallenge
//
//  Created by mahesh lad on 12/02/2024.
//

import Foundation
struct MainModel : Codable {
	let showInStockOnly : Bool?
	let products : [Products]?
	let facets : [Facets]?
	let results : Int?
	let pagesAvailable : Int?
	let crumbs : [CrumbsMain]?
	let dynamicBannerId : String?
	let banners : Banners?
	let categoryTitle : String?
	let seoBannerId : String?
	let seoInformation : SeoInformationMain?
	let pageInformation : PageInformation?
	let triggeredRules : TriggeredRules?
	let endecaCanonical : String?
	let baseFacetId : String?

	enum CodingKeys: String, CodingKey {

		case showInStockOnly = "showInStockOnly"
		case products = "products"
		case facets = "facets"
		case results = "results"
		case pagesAvailable = "pagesAvailable"
        case crumbs = "crumbs"
		case dynamicBannerId = "dynamicBannerId"
		case banners = "banners"
		case categoryTitle = "categoryTitle"
		case seoBannerId = "seoBannerId"
		case seoInformation = "seoInformation"
		case pageInformation = "pageInformation"
		case triggeredRules = "triggeredRules"
		case endecaCanonical = "endecaCanonical"
		case baseFacetId = "baseFacetId"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		showInStockOnly = try values.decodeIfPresent(Bool.self, forKey: .showInStockOnly)
		products = try values.decodeIfPresent([Products].self, forKey: .products)
		facets = try values.decodeIfPresent([Facets].self, forKey: .facets)
		results = try values.decodeIfPresent(Int.self, forKey: .results)
		pagesAvailable = try values.decodeIfPresent(Int.self, forKey: .pagesAvailable)
		crumbs = try values.decodeIfPresent([CrumbsMain].self, forKey: .crumbs)
		dynamicBannerId = try values.decodeIfPresent(String.self, forKey: .dynamicBannerId)
		banners = try values.decodeIfPresent(Banners.self, forKey: .banners)
		categoryTitle = try values.decodeIfPresent(String.self, forKey: .categoryTitle)
		seoBannerId = try values.decodeIfPresent(String.self, forKey: .seoBannerId)
		seoInformation = try values.decodeIfPresent(SeoInformationMain.self, forKey: .seoInformation)
		pageInformation = try values.decodeIfPresent(PageInformation.self, forKey: .pageInformation)
		triggeredRules = try values.decodeIfPresent(TriggeredRules.self, forKey: .triggeredRules)
		endecaCanonical = try values.decodeIfPresent(String.self, forKey: .endecaCanonical)
		baseFacetId = try values.decodeIfPresent(String.self, forKey: .baseFacetId)
	}

}
