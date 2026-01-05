//
//  SubstractTheProductAndSumOfDigitsOfAnInteger(1281).swift
//  
//
//  Created by Richard Cho on 2020-08-28.
//

import Foundation

class Solution {
    func subtractProductAndSum(_ n: Int) -> Int {
        var n = n, product = 1, sum = 0
        
        while (n > 0) {
            let current = n % 10
            product *= current
            sum += current
            n /= 10
        }
        
        return product - sum
    }
}
