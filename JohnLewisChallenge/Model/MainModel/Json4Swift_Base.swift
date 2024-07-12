/* 
Copyright (c) 2024 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct DetailModel : Codable {
	let showInStockOnly : Bool?
	let products : [Products]?
	let facets : [Facets]?
	let results : Int?
	let pagesAvailable : Int?
	let crumbs : [Crumbs]?
	let dynamicBannerId : String?
	let banners : Banners?
	let categoryTitle : String?
	let seoBannerId : String?
	let seoInformation : SeoInformation?
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
		crumbs = try values.decodeIfPresent([Crumbs].self, forKey: .crumbs)
		dynamicBannerId = try values.decodeIfPresent(String.self, forKey: .dynamicBannerId)
		banners = try values.decodeIfPresent(Banners.self, forKey: .banners)
		categoryTitle = try values.decodeIfPresent(String.self, forKey: .categoryTitle)
		seoBannerId = try values.decodeIfPresent(String.self, forKey: .seoBannerId)
		seoInformation = try values.decodeIfPresent(SeoInformation.self, forKey: .seoInformation)
		pageInformation = try values.decodeIfPresent(PageInformation.self, forKey: .pageInformation)
		triggeredRules = try values.decodeIfPresent(TriggeredRules.self, forKey: .triggeredRules)
		endecaCanonical = try values.decodeIfPresent(String.self, forKey: .endecaCanonical)
		baseFacetId = try values.decodeIfPresent(String.self, forKey: .baseFacetId)
	}

}
