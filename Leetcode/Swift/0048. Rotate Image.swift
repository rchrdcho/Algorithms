//
//  RotateImage(48).swift
//  
//
//  Created by Richard Cho on 2020-08-28.
//

import Foundation

class Solution {
    func rotate(_ matrix: inout [[Int]]) {
        let size = matrix.count - 1;
        
        for i in 0...(size / 2) {
            for j in i..<(size - i) {
                let p1 = matrix[i][j]
                let p2 = matrix[j][size-i];
                let p3 = matrix[size-i][size-j];
                let p4 = matrix[size-j][i];
                
                matrix[i][j] = p4;
                matrix[j][size-i] = p1;
                matrix[size-i][size-j] = p2;
                matrix[size-j][i] = p3;
            }
        }
    }
}
