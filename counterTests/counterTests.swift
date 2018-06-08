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
        counter.increment()
        let result = counter.totalCount
        XCTAssertEqual(result, 1)
    }
    
    func testDecrementCountByOne() {
        counter.totalCount = 1
        counter.decrement()
        let result = counter.totalCount
        XCTAssertEqual(result, 0)
    }
    
    func testDoNotDecrementIfTotalCountIsZero() {
        counter.decrement()
        let result = counter.totalCount
        XCTAssertEqual(result, 0)
    }
    
    func testResetCounterToZero () {
        counter.totalCount = 25
        counter.reset()
        let result = counter.totalCount
        XCTAssertEqual(result, 0)
    }
    
}
