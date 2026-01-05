//
//  Solution.swift
//  LeetCodeScrachSw
//
//  Created by Richard Cho on 2021-04-07.
//

import Foundation

class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        for i in 0..<n {
            nums1[m + i] = nums2[i]
        }
        nums1.sort()
    }
}
