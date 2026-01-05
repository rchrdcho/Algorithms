//
//  ClimbingStairs(70).swift
//
//
//  Created by Richard Cho on 2020-08-17.
//

import Foundation

class Solution {
    func climbStairs(_ n: Int) -> Int {
        guard n > 0 else { return 0 }
        var stairs = [Int](repeating: 0, count: n + 1)
        stairs[0] = 1
        stairs[1] = 2
        if n > 2 {
            for i in 2..<n {
                stairs[i] = stairs[i - 2] + stairs[i - 1]
            }
        }
        return stairs[n - 1]
    }
}
