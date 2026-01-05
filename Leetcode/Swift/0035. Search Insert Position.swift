//
//  Solution.swift
//
//  Created by Richard Cho on 2021-02-23.
//

class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        guard nums.count > 0 && nums.first! < target else {
            return 0
        }
        
        for i in 0..<nums.count {
            if target <= nums[i] {
                return i
            }
        }
        
        return nums.count
    }
}
