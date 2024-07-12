//
//  DetailViewModel.swift
//  JohnLewisChallenge
//
//  Created by mahesh lad on 13/02/2024.
//

import Foundation

@MainActor
class DetailViewModel: ObservableObject {
    var service: ServiceProtocol!
    
    init(service: ServiceProtocol) {
        self.service = service
    }
    
    @Published var detailModel : DetailModel?
    @Published var product: DetailsData?
    @Published var arrtibutes: [Attributes]?
    @Published var urls = [String]()
    @Published var urlsCount = 0
    
    func getMainProducts(productId: String) async throws {
        do {
            let detailModel = try await service.fetchDataDetail(productId: productId)
            self.detailModel = detailModel
            
            guard let details =  detailModel?.detailsData else { return }
            let detailData =  details.filter{ $0.productId == productId}.first
            self.product = detailData
            self.arrtibutes = detailData?.details?.features?.first?.attributes
            self.urls =  detailData?.media?.images?.urls ?? ["//"]
            self.urlsCount = (detailData?.media?.images?.urls ?? ["//"]).count
            print(urls)
            print("\((urls.first ?? "//").addHttps)")
        } catch let error {
            print(error.localizedDescription)
        }
    }
}
