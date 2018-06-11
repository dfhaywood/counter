//
//  counterTests.swift
//  counterTests
//
//  Created by David Haywood on 6/8/18.
//  Copyright © 2018 dfhaywood. All rights reserved.
//

import XCTest
@testable import counter

class counterTests: XCTestCase {
    
    var counter: Counter!
    
    override func setUp() {
        super.setUp()
        counter = Counter()
    }
    
    override func tearDown() {
        counter = nil
        super.tearDown()
    }
    
    func testIncrementCountByOne() {
        counter.totalCount = 33
        let result = counter.action(task: .plus)
        XCTAssertEqual(result, 34)
    }
    
    func testDecrementCountByOne() {
        counter.totalCount = 5
        let result = counter.action(task: .minus)
        XCTAssertEqual(result, 4)
    }
    
    func testDoNotDecrementIfTotalCountIsZero() {
        let result = counter.action(task: .minus)
        XCTAssertEqual(result, 0)
    }
    
    func testResetCounterToZero () {
        counter.totalCount = 25
        let result = counter.action(task: .reset)
        XCTAssertEqual(result, 0)
    }
    
}
