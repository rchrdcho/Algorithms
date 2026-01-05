//
//  HowManyNumbersAreSmallerThanTheCurrentNumber(1365).swift
//  
//
//  Created by Richard Cho on 2020-08-28.
//

import Foundation

class Solution {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        var nums = nums, count = [Int](repeating: 0, count: 102)
        
        for i in 0..<nums.count {
            count[nums[i] + 1] += 1
        }
        
        for i in 0..<101 {
            count[i + 1] += count[i]
        }
        
        for i in 0..<nums.count {
            nums[i] = count[nums[i]]
        }
        
        return nums
    }
}
