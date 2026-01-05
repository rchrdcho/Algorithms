//
//  RomanToInteger(13).swift
//  
//
//  Created by Richard Cho on 2020-08-25.
//

import Foundation

class Solution {
    func romanToInt(_ s: String) -> Int {
        let table: [String : Int] = [ "I" : 1,
                      "V" : 5,
                      "X" : 10,
                      "L" : 50,
                      "C" : 100,
                      "D" : 500,
                      "M" : 1000 ]
        
        var result = 0
        
        guard s.count != 0 else {
            return 0
        }
        
        guard s.count > 1 else {
            return table[s]!
        }
        
        var flag: Bool = true
        
        for i in 0..<s.count {
            guard flag else { flag = true; continue }
            
            let first = s[i]
            let second = i == s.count - 1 ? "" : s[i + 1]
            
            if let firstNum = table[first] {
                let secondNum = table[second] ?? 0
                if firstNum >= secondNum {
                    result += firstNum
                } else {
                    result += (secondNum - firstNum)
                    flag = false
                }
            }
        }
        
        return result
        
    }
}

extension String {
    subscript(index: Int) -> String {
        get {
            return String(self[self.index(startIndex, offsetBy: index)])
        }
        set {
            let startIndex = self.index(self.startIndex, offsetBy: index)
            self = self.replacingCharacters(in: startIndex..<self.index(after: startIndex), with: newValue)
        }
    }
    
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
