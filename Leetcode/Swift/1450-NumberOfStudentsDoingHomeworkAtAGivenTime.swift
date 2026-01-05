//
//  NumberOfStudentsDoingHomeworkAtAGivenTime(1450).swift
//  
//
//  Created by Richard Cho on 2020-08-28.
//

import Foundation

class Solution {
    func busyStudent(_ startTime: [Int], _ endTime: [Int], _ queryTime: Int) -> Int {
        let size = startTime.count
        var count = 0
        
        for i in 0..<size {
            if startTime[i] <= queryTime && endTime[i] >= queryTime { count += 1 }
        }
        
        return count
    }
}
