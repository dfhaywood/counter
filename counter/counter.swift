//
//  counter.swift
//  counter
//
//  Created by David Haywood on 6/8/18.
//  Copyright © 2018 dfhaywood. All rights reserved.
//

import Foundation

class Counter {
    
    var totalCount: Int
    
    init() {
        totalCount = 0
    }
    
    func action(task: Task) -> Int {
        switch task {
        case .plus:
            totalCount += 1
        case .minus:
            if totalCount > 0 {
                totalCount -= 1
            }
        case .reset:
            totalCount = 0
        }
       return totalCount
    }
    
}
