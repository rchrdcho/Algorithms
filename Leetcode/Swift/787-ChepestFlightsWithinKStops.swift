//
//  ChepestFlightsWithinKStops(787).swift
//  
//
//  Created by Richard Cho on 2020-08-17.
//

import Foundation

class Solution {
    func findCheapestPrice(_ n: Int, _ flights: [[Int]], _ src: Int, _ dst: Int, _ K: Int) -> Int {
        var cost = [Int](repeating: Int.max, count: n)
        cost[src] = 0
        
        for _ in 0...K {
            var temp = cost
            for flight in flights {
                let current = flight[0], next = flight[1], price = flight[2]
                if cost[current] == Int.max { continue }
                temp[next] = min(temp[next], cost[current] + price)
            }
            cost = temp
        }

        return cost[dst] == Int.max ? -1 : cost[dst]
    }
}
