//
//  3110. Score of a String.swift
//
//  Created by Richard Cho on 2025-09-23.
//

class Solution {
    func scoreOfString(_ s: String) -> Int {
        var asciiValue: [Int] = []
        for char in s {
            asciiValue.append(Int(Unicode.Scalar(String(char))!.value))
        }
        var result = 0
        for i in 0..<(s.count - 1) {
            result += abs(asciiValue[i] - asciiValue[i + 1])
        }
        return result
    }
}

