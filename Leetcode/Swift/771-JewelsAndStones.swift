//
//  JewelsAndStones(771).swift
//  
//
//  Created by Richard Cho on 2020-08-28.
//

import Foundation

class Solution {
    func numJewelsInStones(_ J: String, _ S: String) -> Int {
        var count = 0
        
        for i in 0..<J.count {
            for j in 0..<S.count {
                if J[J.index(J.startIndex, offsetBy: i)] == S[S.index(S.startIndex,offsetBy: j)] { count += 1 }
            }
        }
        
        return count
    }
}
