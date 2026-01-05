//
//  Solution.swift
//  LeetCodeScrachSw
//
//  Created by Richard Cho on 2021-11-29.
//

import Foundation

class Solution {
    func finalValueAfterOperations(_ operations: [String]) -> Int {
        var result = 0
        operations.forEach { string in
            if string == "++X" || string == "X++" {
                result += 1
            } else {
                result -= 1
            }
        }
        return result
    }
}
