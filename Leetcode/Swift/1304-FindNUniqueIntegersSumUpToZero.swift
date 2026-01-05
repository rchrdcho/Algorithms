//
//  FindNUniqueIntegersSumUpToZero(1304).swift
//  
//
//  Created by Richard Cho on 2020-08-28.
//

import Foundation

func sumZero(_ n: Int) -> [Int] {
    var result = [Int](repeating: 0, count: n)
    for i in 0..<n {
        result[i] = i * 2 - n + 1
    }
    return result
}
