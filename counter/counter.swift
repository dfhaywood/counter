//
//  counter.swift
//  counter
//
//  Created by David Haywood on 6/8/18.
//  Copyright © 2018 dfhaywood. All rights reserved.
//

import Foundation

class Counter {
    
    var totalCount: Int = 0
    
    func increment() {
        totalCount += 1
    }
    
    func decrement() {
        if totalCount > 0 {
            totalCount -= 1
        }
    }
    
    func reset() {
        totalCount = 0
    }
}
