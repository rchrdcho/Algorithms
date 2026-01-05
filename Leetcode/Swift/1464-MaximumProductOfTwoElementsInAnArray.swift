//
//  MaximumProductOfTwoElementsInAnArray(1464).swift
//  
//
//  Created by Richard Cho on 2020-08-28.
//

import Foundation

class Solution {
    func maxProduct(_ nums: [Int]) -> Int {
        var m = Int.min, n = m
        for num in nums {
            if num >= m {
                n = m
                m = num
            } else if num > n {
                n = num
            }
        }
        return (m - 1) * (n - 1)
    }
}
