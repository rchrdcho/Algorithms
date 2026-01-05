//
//  SumOfSwuareNumbers(633).swift
//
//
//  Created by Richard Cho on 2020-08-17.
//

import Foundation

class Solution {
    func judgeSquareSum(_ c: Int) -> Bool {
        let max = Int(Double(c).squareRoot())

        for i in 0...max {
            let t = c - i * i
            let j = Int(Double(t).squareRoot())
            if j * j == c - i * i { return true }
        }

        return false
    }
}
