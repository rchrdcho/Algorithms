//
//  Solution.swift
//  LeetCodeScrachSw
//
//  Created by Richard Cho on 2021-09-22.
//

import Foundation

class Solution {
    func isPalindrome(_ s: String) -> Bool {
        if s.isEmpty { return true }
        
        let array = Array(s)
        var head = 0, tail = array.count - 1, cHead: Character, cTail: Character
        
        while head <= tail {
            cHead = array[head]
            cTail = array[tail]

            if !cHead.isLetter && !cHead.isNumber {
                head += 1
            } else if !cTail.isLetter && !cTail.isNumber {
                tail -= 1
            } else {
                if cHead.lowercased() != cTail.lowercased() {
                    return false
                }
                head += 1
                tail -= 1
            }
            
        }
        
        return true;
    }
}
