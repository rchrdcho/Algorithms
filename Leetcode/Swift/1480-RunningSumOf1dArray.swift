//
//  RunningSumOf1dArray(1480).swift
//  
//
//  Created by Richard Cho on 2020-08-28.
//

import Foundation

class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var result = [Int](), sum = 0
        
        for num in nums {
            sum += num
            result.append(sum)
        }
        
        return result
    }
}
