//
//  Solution.swift
//  LeetCodeScrachSw
//
//  Created by Richard Cho on 2021-11-23.
//

import Foundation

class Solution {
    func intervalIntersection(_ firstList: [[Int]], _ secondList: [[Int]]) -> [[Int]] {
        var i = 0, j = 0, result: [[Int]] = []
        
        while (i < firstList.count && j < secondList.count) {
            let first = firstList[i], second = secondList[j]
            if firstList[i][0] <= secondList[j][1] && firstList[i][1] >= secondList[j][0] {
                result.append([max(firstList[i][0], secondList[j][0]), min(firstList[i][1], secondList[j][1])])
            }
            first[1] < second[1] ? (i += 1) : (j += 1)
        }
        
        return result
    }
}
