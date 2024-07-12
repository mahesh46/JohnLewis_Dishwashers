//
//  MainViewModelTests.swift
//  JohnLewisChallengeTests
//
//  Created by mahesh lad on 15/02/2024.
//

import XCTest
@testable import JohnLewisChallenge

@MainActor
final class MainViewModelTests: XCTestCase {
    var service: MockNetworkService!
    var viewModel: MainViewModel!

    @MainActor override func setUp() {
        super.setUp()
        service = MockNetworkService()
        viewModel = MainViewModel(service: service)
    }

    func testGetMainProducts() async throws {
        do {
            try await viewModel.getMainProducts()
            XCTAssertNotNil(viewModel.mainModel)
            XCTAssertNotNil(viewModel.products)
        } catch {
            XCTFail("Expected to fetch main products, but got error: \(error)")
        }
    }

}
