//
//  PartitionLabels(763).swift
//  
//
//  Created by Richard Cho on 2020-08-17.
//

import Foundation

class Solution {
    func partitionLabels(_ S: String) -> [Int] {
        guard !S.isEmpty else { return [Int]() }
        
        var lastIndex = [Int](repeating: 0, count: 26)
        for i in 0..<S.count { lastIndex[Int(Character(S[i]).asciiValue!) - 97] = i }
        
        var j = 0, cursor = 0
        var result = [Int]()
        
        for i in 0..<S.count {
            j = max(j, lastIndex[Int(Character(S[i]).asciiValue!) - 97])
            if i == j {
                result.append(i - cursor + 1)
                cursor = i + 1
            }
        }
        
        return result;
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
}
