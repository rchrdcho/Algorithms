//
//  Solution.swift
//  LeetCodeScrachSw
//
//  Created by Richard Cho on 2021-09-22.
//

import Foundation

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        guard s.count > 0 else { return 0 }
        guard s.count > 1 else { return 1 }
        
        var maxLength = 0
        var temp = [Character]()
        let charArray = Array(s)
        temp.append(charArray[0])
        
        for i in 1...charArray.count - 1{
            if let index = temp.firstIndex(of: charArray[i]){
                temp.removeFirst(index + 1)
            }
            temp.append(charArray[i])
            maxLength = max(maxLength, temp.count)
        }
        
        return maxLength
    }
}

/*
if s.count == 0{
     return 0
 }else if s.count == 1{
   return 1
 }
 
 var maxLength = 0
 var temp = [Character]()
 let charArray = Array(s)
 temp.append(charArray[0])
 
 for i in 1...charArray.count-1{
     
     if let index = temp.firstIndex(of: charArray[i]){
         temp.removeFirst(index+1)
     }
     temp.append(charArray[i])
     maxLength = max(maxLength, temp.count)
     
 }
 return maxLength
*/
