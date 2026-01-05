//
//  MaximumSubarray(53).swift
//
//
//  Created by Richard Cho on 2020-08-17.
//

import Foundation

class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        let n = nums.count
        var d = [Int](repeating: 0, count: n)

        d[0] = nums[0]
        var maxVal = d[0]

        for i in 1..<n {
            d[i] = max(nums[i] + d[i - 1], nums[i])
            maxVal = max(maxVal, d[i])
        }

        return maxVal
    }
}
