//
//  Solution.swift
//  LeetCodeScrachSw
//
//  Created by Richard Cho on 2022/09/26.
//

import Foundation

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func swapPairs(_ head: ListNode?) -> ListNode? {
        guard let _ = head, let _ = head?.next else { return head }
        
        let result = head!.next
        head?.next = swapPairs(head?.next?.next)
        result?.next = head
        
        return result
    }
}
