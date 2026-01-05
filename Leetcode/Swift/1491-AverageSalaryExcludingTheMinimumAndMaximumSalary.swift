//
//  AverageSalaryExcludingTheMinimumAndMaximumSalary(1491).swift
//  
//
//  Created by Richard Cho on 2020-08-28.
//

import Foundation

class Solution {
    func average(_ salary: [Int]) -> Double {
        return Double(salary.reduce(0, +) - salary.max()! - salary.min()!) / Double(salary.count - 2)
    }
}
