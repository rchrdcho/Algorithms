//
//  Solution.swift
//  LeetCodeScrachSw
//
//  Created by Richard Cho on 2021-02-26.
//

import Foundation

class Solution {
    func mySqrt(_ x: Int) -> Int {
        var index = 0
        while (true) {
            if index * index <= x && x < (index + 1) * (index + 1) {
                return index
            }
            index += 1
        }
        return 0
    }
}
