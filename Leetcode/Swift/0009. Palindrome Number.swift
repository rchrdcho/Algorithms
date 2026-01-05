//
//  PalindromeNumber(9).swift
//
//
//  Created by Richard Cho on 2020-08-17.
//

import Foundation

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        guard x >= 0 else { return false }
        return String(x) == String(String(x).reversed())
    }
}
