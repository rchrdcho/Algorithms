//
//  TaskScheduler(621).swift
//  
//
//  Created by Richard Cho on 2020-08-17.
//

import Foundation

class Solution {
    func leastInterval(_ tasks: [Character], _ n: Int) -> Int {
        var counter = [Int](repeating: 0, count: 26)
        tasks.forEach{ counter[Int($0.asciiValue! - 65)] += 1 }
        
        let maxNum = counter.max()!
        let maxCount = counter.filter({ $0 == maxNum }).count
        
        let repeatCount = maxNum - 1
        let repeatLength = n - maxCount + 1
        
        let emptySpace = repeatCount * repeatLength
        let lefts = tasks.count - maxNum * maxCount
        
        if emptySpace - lefts < 0 { return tasks.count }
        else { return tasks.count + emptySpace - lefts }
    }
}
