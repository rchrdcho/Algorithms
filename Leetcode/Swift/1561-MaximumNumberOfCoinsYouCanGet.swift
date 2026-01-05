//
//  MaximumNumberOfCoinsYouCanGet(1561).swift
//  
//
//  Created by Richard Cho on 2020-08-28.
//

import Foundation

class Solution {
    func maxCoins(_ piles: [Int]) -> Int {
        let count = piles.count, myPiles = 2 * (count / 3)
        var piles = piles.sorted(), sum = 0
        
        for i in stride(from: count - 2, through: count - myPiles, by: -2) {
            sum += piles[i]
        }
        
        return sum
    }
}
