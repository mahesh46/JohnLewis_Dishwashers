//
//  DetailViewModelTests.swift
//  JohnLewisChallengeTests
//
//  Created by mahesh lad on 15/02/2024.
//

import XCTest
@testable import JohnLewisChallenge

@MainActor
final class DetailViewModelTests: XCTestCase {
    var service: MockNetworkService!
    var viewModel: DetailViewModel!

    override func setUp() {
        super.setUp()
        service = MockNetworkService()
        viewModel = DetailViewModel(service: service)
    }

    func testGetMainProducts() async throws {
        do {
            let testProductId = "1955287"
            try await viewModel.getMainProducts(productId: testProductId)
            XCTAssertNotNil(viewModel.detailModel)
            XCTAssertNotNil(viewModel.product)
            XCTAssertNotNil(viewModel.arrtibutes)
            XCTAssertNotNil(viewModel.urls)
            XCTAssertEqual(viewModel.urlsCount, viewModel.urls.count)
        } catch {
            XCTFail("Expected to fetch main products, but got error: \(error)")
        }
    }
}
