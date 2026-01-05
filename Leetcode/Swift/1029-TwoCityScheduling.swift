//
//  TwoCityScheduling(1029).swift
//  
//
//  Created by Richard Cho on 2020-08-17.
//

import Foundation

class Solution {
    func twoCitySchedCost(_ costs: [[Int]]) -> Int {
        let costs = costs.map{ [$0[0], $0[1], $0[0] - $0[1]] }.sorted(by: { $0[2] > $1[2] })
        
        var cost = 0
        for i in 0..<(costs.count / 2) {
            cost += costs[i][1] + costs[costs.count - i - 1][0];
        }
        
        return cost
    }
}
