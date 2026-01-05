//
//  Solution.swift
//  LeetCodeScrachSw
//
//  Created by Richard Cho on 2022/09/26.
//

import Foundation

class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.isEmpty { return "" }
        if strs.count == 1 { return strs[0] }

        var shortest = "", prefix = ""
        var shortestLength = Int.max
        
        for str in strs {
            if str.count < shortestLength {
                shortestLength = str.count
                shortest = str
            }
        }
        
        for i in 0...shortestLength {
            prefix = shortest[0, i]
            
            for j in 0..<strs.count {
                if !strs[j].starts(with: prefix) {
                    return prefix[0, prefix.count - 1]
                }
            }
        }
                
        return prefix;
    }
}


extension String {
    
    subscript(start: Int, end: Int) -> String {
        get {
            let startIndex = self.index(self.startIndex, offsetBy: start)
            let endIndex = self.index(self.startIndex, offsetBy: end)
            return String(self[startIndex..<endIndex])
        }
        set {
            let startIndex = self.index(self.startIndex, offsetBy: start)
            let endIndex = self.index(self.startIndex, offsetBy: end)
            self = self.replacingCharacters(in: startIndex..<endIndex, with: newValue)
        }
    }
    
}
