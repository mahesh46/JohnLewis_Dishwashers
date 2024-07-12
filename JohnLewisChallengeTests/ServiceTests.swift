//
//  ServiceTests.swift
//  JohnLewisChallengeTests
//
//  Created by mahesh lad on 12/02/2024.
//

import XCTest
@testable import JohnLewisChallenge

@MainActor
final class ServiceTests: XCTestCase {
    
    func testFetchLiveWashingMachinesDataRetrival() async throws {
        // given
        let networkService = NetworkService()
        // then
        let expectation = XCTestExpectation(description: "Expect network service to fetch data")
        do {
            let data = try await networkService.fetchDataHeader()
            XCTAssertNotNil(data)
            expectation.fulfill()
        } catch  {
            XCTFail("Expected to fetch main products, but got error: \(error)")
        }
    }
    
    func testFetchMockWashingMachinesDataRetrival() async throws {
        // given
        let networkService = MockNetworkService()
        // then
        let expectation = XCTestExpectation(description: "Expect network service to fetch data")
        do {
            let data = try await networkService.fetchDataHeader()
            XCTAssertNotNil(data)
            expectation.fulfill()
        } catch  {
            XCTFail("Expected to fetch main products, but got error: \(error)")
        }
        
    }
    
    
    func testFetchLiveWashingMachinesProductDataRetrival() async throws {
        // given
        let networkService = NetworkService()
        // then
        let expectation = XCTestExpectation(description: "Expect network service to fetch data")
        
        do {
            let data = try await networkService.fetchDataDetail(productId: "1955287")
            XCTAssertNotNil(data)
            expectation.fulfill()
        } catch  {
            XCTFail("Expected to fetch main product Data, but got error: \(error)")
        }
        
    }
    
    func testFetchMockWashingMachinesProductDataRetrival() async throws {
        // given
        let networkService = MockNetworkService()
        // then
        let expectation = XCTestExpectation(description: "Expect network service to fetch data")
        
        do {
            let data = try await networkService.fetchDataDetail(productId: "1955287")
            XCTAssertNotNil(data)
            expectation.fulfill()
        } catch  {
            XCTFail("Expected to fetch main product data, but got error: \(error)")
        }
        
    }
}
