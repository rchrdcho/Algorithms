//
//  27-RemoveElement.swift
//  LeetCode
//
//  Created by Richard Cho on 2020-11-27.
//

import Foundation

class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var i = 0
        while nums.count > i {
            if nums[i] == val {
                nums.remove(at: i)
            } else {
                i += 1
            }
        }
        return nums.count
    }
}
