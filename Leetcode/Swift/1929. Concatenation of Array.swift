//
//  Solution.swift
//  LeetCodeScrachSw
//
//  Created by Richard Cho on 2021-11-23.
//

import Foundation

class Solution {
    func getConcatenation(_ nums: [Int]) -> [Int] {
        var ans = [Int](nums)
        nums.forEach{ ans.append($0) }
        return ans
    }
}
