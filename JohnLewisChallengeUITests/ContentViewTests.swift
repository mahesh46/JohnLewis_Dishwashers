//
//  ContentViewTests.swift
//  JohnLewisChallengeUITests
//
//  Created by mahesh lad on 15/02/2024.
//

import XCTest

final class ContentViewTests: XCTestCase {

    var app: XCUIApplication!

    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app = XCUIApplication()
        app.launch()
    }

    func testContentView() {
        // Verify the ContentView is displaying the correct elements
        // Note: You'll need to add accessibility identifiers in your ContentView to make this work
      //  XCTAssertTrue(app.images["productImage"].exists)
        XCTAssertTrue(app.staticTexts["productTitle"].exists)
        XCTAssertTrue(app.staticTexts["productPrice"].exists)
    }
}
