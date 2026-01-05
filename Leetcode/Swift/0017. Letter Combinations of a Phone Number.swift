//
//  LetterCombinationsOfAPhoneNumber(17).swift
//  
//
//  Created by Richard Cho on 2020-08-28.
//

import Foundation

class Solution {
    func letterCombinations(_ digits: String) -> [String] {
        guard digits.count > 0 else { return [String]() }
        
        let dictionary: [Character: [Character]] = [
            "2": ["a", "b", "c"],
            "3": ["d", "e", "f"],
            "4": ["g", "h", "i"],
            "5": ["j", "k", "l"],
            "6": ["m", "n", "o"],
            "7": ["p", "q", "r", "s"],
            "8": ["t", "u", "v"],
            "9": ["w", "x", "y", "z"]
        ]
            
        var result: [String] = [""]
        
        for digit in digits {
            if digit == "1" || digit == "0" { continue }
            var temp = [String]()
            let letters = dictionary[digit]!
            for str in result {
                for letter in letters {
                    temp.append("\(str)\(letter)")
                }
            }
            result = temp
        }
        return result
    }
}
