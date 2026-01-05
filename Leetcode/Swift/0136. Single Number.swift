//
//  SingleNumber(136).swift
//  
//
//  Created by Richard Cho on 2020-08-28.
//

import Foundation

class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var set = Set<Int>()
        
        for num in nums {
            let (isInserted, _) = set.insert(num)
            if !isInserted { set.remove(num) }
        }
        
        return set.popFirst()!
    }
}
