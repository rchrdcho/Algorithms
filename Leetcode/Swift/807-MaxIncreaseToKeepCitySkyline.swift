//
//  MaxIncreaseToKeepCitySkyline(807).swift
//  
//
//  Created by Richard Cho on 2020-08-28.
//

import Foundation

func maxIncreaseKeepingSkyline(_ grid: [[Int]]) -> Int {
    let size = grid.count
    var row = [Int](repeating: 0, count: size), col = [Int](repeating: 0, count: size), result = 0
    
    for i in 0..<size {
        for j in 0..<size {
            row[i] = max(row[i], grid[i][j])
            col[j] = max(col[j], grid[i][j])
        }
    }
    
    for i in 0..<size {
        for j in 0..<size {
            result += min(row[i], col[j]) - grid[i][j]
        }
    }
    
    return result
}
