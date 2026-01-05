//
//  Solution.swift
//  LeetCodeScrachSw
//
//  Created by Richard Cho on 2021-08-01.
//

import Foundation

//public class TreeNode {
//    public var val: Int
//    public var left: TreeNode?
//    public var right: TreeNode?
//    public init() { self.val = 0; self.left = nil; self.right = nil; }
//    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
//    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
//        self.val = val
//        self.left = left
//        self.right = right
//    }
//}


class Solution {
    func maxDepth(_ root: TreeNode?) -> Int {
        var height = 0;
        
        if root != nil {
            height = 1 + max(maxDepth(root?.left), maxDepth(root?.right))
        }
        
        return height
    }
}
