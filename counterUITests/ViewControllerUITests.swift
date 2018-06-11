//
//  ViewControllerUITests.swift
//  counterUITests
//
//  Created by David Haywood on 6/9/18.
//  Copyright © 2018 dfhaywood. All rights reserved.
//

import XCTest

class ViewControllerUITests: XCTestCase {
    

    
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testTapPlusButtonIncrementsCounter() {
        let app = XCUIApplication()
        let addButton = app.buttons["addButton"]
        let display = app.staticTexts["display"]
        addButton.tap()
        XCTAssertEqual(display.label, "1")
    }
    
    func testTapMinusButtonDecrementsCounter() {
        let app = XCUIApplication()
        let minusButton = app.buttons["minusButton"]
        let display = app.staticTexts["display"]
        increaseCount(count: 2)
        minusButton.tap()
        XCTAssertEqual(display.label, "1")
    }

    func testTapMinusButtonWhenCountIsZero() {
        let app = XCUIApplication()
        let minusButton = app.buttons["minusButton"]
        let display = app.staticTexts["display"]
        minusButton.tap()
        XCTAssertEqual(display.label, "0")
    }

    func testTapResetButtonSetsDisplayToZero() {
        let app = XCUIApplication()
        let resetButton = app.buttons["resetButton"]
        let display = app.staticTexts["display"]
        increaseCount(count: 15)
        resetButton.tap()
        XCTAssertEqual(display.label, "0")
    }
    
    func increaseCount(count : Int) {
        let app = XCUIApplication()
        let addButton = app.buttons["addButton"]
        
        for _ in 1...count {
            addButton.tap()
        }
    }
    
}
