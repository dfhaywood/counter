//
//  ViewControllerUnitTests.swift
//  counterTests
//
//  Created by David Haywood on 6/8/18.
//  Copyright © 2018 dfhaywood. All rights reserved.
//

import XCTest

@testable import counter

class ViewControllerUnitTests: XCTestCase {
    
    var viewController: ViewController!
    
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        viewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        UIApplication.shared.keyWindow!.rootViewController = viewController
        
        let _ = viewController.view
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testHasACounter() {
        XCTAssertNotNil(viewController.counter)
    }
    
    
    func testIncrementTotalCount() {
        viewController.changeCount(action: .plus)
        let newCount = viewController.displayCount
        XCTAssertEqual(newCount, 1)
    }
    
    func testIncrementTotalCountTwice() {
        viewController.changeCount(action: .plus)
        viewController.changeCount(action: .plus)
        let newCount = viewController.displayCount
        XCTAssertEqual(newCount, 2)
    }
    
    func testDecrementTotalCount() {
        viewController.counter.totalCount = 25
        viewController.changeCount(action: .minus)
        let newCount = viewController.displayCount
        XCTAssertEqual(newCount, 24)
    }
    
    func testNotDecrementTotalCountIfZero() {
        viewController.changeCount(action: .minus)
        let newCount = viewController.displayCount
        XCTAssertEqual(newCount, 0)
    }
    
    func testResetCounter() {
        viewController.counter.totalCount = 42
        viewController.changeCount(action: .reset)
        let newCount = viewController.displayCount
        XCTAssertEqual(newCount, 0)
    }
    
    func testDisplayCountNil() {
        viewController.displayCount = nil
        XCTAssertNil(viewController.displayCount)
    }

    
}
