//
//  NumberOfStepsToReduceANumberToZero(1342).swift
//  
//
//  Created by Richard Cho on 2020-08-28.
//

import Foundation

class Solution {
    func numberOfSteps (_ num: Int) -> Int {
        var num = num, count = 0
        
        while num > 0 {
            if num % 2 == 0 { num /= 2 }
            else { num -= 1 }
            count += 1
        }
        
        return count
    }
}
