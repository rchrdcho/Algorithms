//
//  FibonacciNumber(509).swift
//
//
//  Created by Richard Cho on 2020-08-17.
//

import Foundation

class Solution {
    func fib(_ N: Int) -> Int {
        if N == 0 {
            return 0
        } else if N == 1 {
            return 1
        }
        return fib(N-1) + fib(N-2)
    }
}
