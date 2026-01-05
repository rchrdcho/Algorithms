//
//  LongestIncreasingSubsequence(300).swift
//
//
//  Created by Richard Cho on 2020-08-17.
//

import Foundation

class Solution {
    func lengthOfLIS(_ nums: [Int]) -> Int {
        guard nums.count > 1 else { return nums.count }

        var d = [Int](repeating: 1, count: nums.count)

        for i in 1..<nums.count {
            for j in 0..<i {
                if nums[j] < nums[i] {
                    if d[j] + 1 > d[i] {
                        d[i] = d[j] + 1
                    }
                }
            }
        }

        return d.max()!
    }
}
