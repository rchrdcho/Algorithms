//
//  Solution.swift
//  LeetCodeScrachSw
//
//  Created by Richard Cho on 2022/09/26.
//

import Foundation

class Solution {
    
    private let romanIndex = [
        1000: "M", 900: "CM", 500: "D", 400: "CD", 100: "C", 90: "XC",
        50: "L", 40: "XL", 10: "X", 9: "IX", 5: "V", 4: "IV", 1: "I"
    ].sorted(by: {$0.key > $1.key})
    
    func intToRoman(_ num: Int) -> String {
        
        var int = num
        var result = ""
        
        while int > 0 {
            for (_, d) in romanIndex.enumerated() where int - d.key >= 0 {
                int -= d.key
                result += d.value
                break
            }
        }
        
        return result
    }
}
