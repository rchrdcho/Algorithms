//
//  MinimumTimeVisitingAllPoints(1266).swift
//  
//
//  Created by Richard Cho on 2020-08-28.
//

import Foundation

class Solution {
    func minTimeToVisitAllPoints(_ points: [[Int]]) -> Int {
        var count = 0
        for i in 0..<points.count - 1 {
            count += max(abs(points[i + 1][0] - points[i][0]), abs(points[i + 1][1] - points[i][1]))
        }
        return count
    }
}
