//
//  ShuffleTheArray(1470).swift
//  
//
//  Created by Richard Cho on 2020-08-28.
//

import Foundation

class Solution {
    func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
        let count = nums.count
        var j = 0, result = [Int](repeating: 0, count: count)
        
        for i in 0..<count {
            if i % 2 != 0 {
                j += 1
                result[i] = nums[i + (n - j)]
            } else {
                result[i] = nums[i - j]
            }
        }
        
        return result
    }
}
