//
//  NumberOfGoodPairs(1512).swift
//  
//
//  Created by Richard Cho on 2020-08-28.
//

import Foundation

func numIdenticalPairs(_ nums: [Int]) -> Int {
    let n = nums.count
    var map = Dictionary<Int, Int>(), result = 0
    
    for i in 0..<n { map.updateValue(map[nums[i]] != nil ? map[nums[i]]! + 1 : 1, forKey: nums[i]) }
    for i in map.values { result += (i * (i-1)) / 2 }
    
    return result
}
