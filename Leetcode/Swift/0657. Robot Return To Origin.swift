//
//  RobotReturnToOrigin(657).swift
//  
//
//  Created by Richard Cho on 2020-08-28.
//

import Foundation

class Solution {
    func judgeCircle(_ moves: String) -> Bool {
        var vertical = 0, horizontal = 0
        
        for move in moves {
            switch move {
            case "U": vertical += 1
            case "D": vertical -= 1
            case "R": horizontal += 1
            case "L": horizontal -= 1
            default:
                continue
            }
        }
        
        return vertical == 0 && horizontal == 0
    }
}
