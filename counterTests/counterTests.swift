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
        counter.action(task: .plus)
        let result = counter.totalCount
        XCTAssertEqual(result, 34)
    }
    
    func testDecrementCountByOne() {
        counter.totalCount = 5
        counter.action(task: .minus)
        let result = counter.totalCount
        XCTAssertEqual(result, 4)
    }
    
    func testDoNotDecrementIfTotalCountIsZero() {
        counter.action(task: .minus)
        let result = counter.totalCount
        XCTAssertEqual(result, 0)
    }
    
    func testResetCounterToZero () {
        counter.totalCount = 25
        counter.action(task: .reset)
        let result = counter.totalCount
        XCTAssertEqual(result, 0)
    }
    
}
