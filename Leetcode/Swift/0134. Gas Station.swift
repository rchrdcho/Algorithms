//
//  GasStation(134).swift
//  
//
//  Created by Richard Cho on 2020-08-17.
//

import Foundation

class Solution {
    func canCompleteCircuit(_ gas: [Int], _ cost: [Int]) -> Int {
        guard gas.reduce(0, { $0 + $1 }) >= cost.reduce(0, { $0 + $1 }) else { return -1 }
        
        var current = 0, total = 0, start = 0
        
        for i in 0..<gas.count {
            current = current + gas[i] - cost[i]
            if current < 0 {
                start = i + 1
                total += current
                current = 0
            }
        }
        return total + current < 0 ? -1 : start
    }
}
