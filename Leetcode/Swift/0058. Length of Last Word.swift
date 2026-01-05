//
//  Solution.swift
//
//  Created by Richard Cho on 2021-02-24.
//

class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        let array = s.split(separator: " ")
        guard let last = array.last else { return 0 }
        return last.count
    }
}
