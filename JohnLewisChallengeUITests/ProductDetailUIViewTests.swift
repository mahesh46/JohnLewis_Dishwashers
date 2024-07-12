//
//  ProductDetailUIViewTests.swift
//  JohnLewisChallengeUITests
//
//  Created by mahesh lad on 15/02/2024.
//

import XCTest

final class ProductDetailUIViewTests: XCTestCase {

    var app: XCUIApplication!

    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app = XCUIApplication()
        app.launch()
    }

    func testProductDetailUIView() {
        // Verify the ProductDetailUIView is displaying the correct elements
        
        let scrollViewsQuery = XCUIApplication().scrollViews
        let elementsQuery = scrollViewsQuery.otherElements
        elementsQuery.buttons["Bosch Serie 2 SMV40C30GB Fully Integrated Dishwasher, £, 379.00"].tap()
        elementsQuery.staticTexts["379.00"].tap()
        elementsQuery.staticTexts["2 year guarantee included"].tap()
        elementsQuery/*@START_MENU_TOKEN@*/.staticTexts["productInformationLabel"]/*[[".staticTexts[\"Product Information\"]",".staticTexts[\"productInformationLabel\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let productpriceElement = scrollViewsQuery.otherElements.containing(.staticText, identifier:"productPrice").element
        productpriceElement.swipeUp()
        productpriceElement.swipeUp()
        elementsQuery/*@START_MENU_TOKEN@*/.staticTexts["productInformation"]/*[[".staticTexts[\"\\nThe Bosch SMV40C30GB built-in dishwasher features a range of programmes to choose from. The 12 place settings make it suitable for a family household, and a durable Polinox base will give it a long life.\\n\\n4 programmes\\n4 programmes to choose from allow you to easily wash your dishes with the most appropriate settings. These programmes include a quick wash programme which is ideal for when you need your dishes clean in a hurry.\\n\\nWater efficient\\nOn a normal 65°C programme, the dishwasher will use just 11.8 litres of water. The AquaSensor measures the amount of soiling at the end of the pre-rinse. If the water is only lightly soiled, it will be re-used for the main wash.\\n\\nQuiet\\nAt just 50dB, the SMV40C30GB has a low noise level, so once you’ve put your dishes in the wash you can enjoy the rest of your evening in peace. The lack of annoying background noise is especially handy if you’re entertaining guests.\\n\\nVarioBaskets\\nWith VarioBaskets, you can enjoy a flexible storage space which can be customised to fit your kitchen items inside efficiently. This is handy for washing particularly large items.\\n\\nInfoLight\\nThe InfoLight feature lets you know when the dishwasher is in use by projecting a dot of light onto the floor. This will prevent you from accidentally opening the door mid-cycle.\\n\\nVarioSpeed\\nSometimes you need a fast wash but without any compromises in quality. VarioSpeed technology lets you cut programme times in half while getting excellent cleaning and drying results.\"]",".staticTexts[\"productInformation\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.swipeUp()
        elementsQuery/*@START_MENU_TOKEN@*/.staticTexts["productSpecification"]/*[[".staticTexts[\"Product Specification\"]",".staticTexts[\"productSpecification\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        elementsQuery.staticTexts["Product code:"].tap()
        elementsQuery.staticTexts["Time remaining indicator"].swipeUp()
        productpriceElement.tap()
        
        XCTAssertTrue(app.staticTexts["productPrice"].exists)
        XCTAssertTrue(app.staticTexts["productInformationLabel"].exists)
        XCTAssertTrue(app.staticTexts["productInformation"].exists)
        XCTAssertTrue(app.staticTexts["productCode"].exists)
        XCTAssertTrue(app.staticTexts["productSpecification"].exists)
        
    }
}
