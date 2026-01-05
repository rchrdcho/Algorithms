//
//  NetworkDelayTime(743).swift
//  
//
//  Created by Richard Cho on 2020-08-17.
//

import Foundation

class Solution {
    func networkDelayTime(_ times: [[Int]], _ N: Int, _ K: Int) -> Int {
        var dist = [Int](repeating: Int.max, count: N + 1)
        dist[K] = 0
        for _ in 0..<N {
            for e in times {
                let u = e[0], v = e[1], w = e[2]
                if dist[u] != Int.max && dist[v] > dist[u] + w {
                    dist[v] = dist[u] + w
                }
            }
        }

        var maxWait = 0
        for i in 1...N {
            maxWait = max(maxWait, dist[i])
        }

        return maxWait == Int.max ? -1 : maxWait
    }
}
