//
//  FlippingAnImage(832).swift
//  
//
//  Created by Richard Cho on 2020-08-28.
//

import Foundation

class Solution {
    func flipAndInvertImage(_ A: [[Int]]) -> [[Int]] {
        let size = A.count
        var A = A
        
        for j in 0..<(size / 2 + size % 2) {
            for i in 0..<size {
                let temp = A[i][j]
                A[i][j] = A[i][size - 1 - j] ^ 1
                A[i][size - 1 - j] = temp ^ 1
            }
        }
        return A
    }
}
