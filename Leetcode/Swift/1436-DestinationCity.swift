//
//  DestinationCity(1436).swift
//  
//
//  Created by Richard Cho on 2020-08-28.
//

import Foundation

class Solution {
    func destCity(_ paths: [[String]]) -> String {
        var set = Set<String>()
        paths.forEach{ set.insert($0[0]) }
        
        for i in 0..<paths.count {
            if !set.contains(paths[i][1]) { return paths[i][1] }
        }
        
        return ""
    }
}
