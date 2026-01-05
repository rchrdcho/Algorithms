//
//  ConvertBinaryNumberInALinkedListToInteger(1290).swift
//  
//
//  Created by Richard Cho on 2020-08-28.
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
    func getDecimalValue(_ head: ListNode?) -> Int {
        var sum = 0, head: ListNode? = head
        while head != nil {
            sum = sum * 2 + head!.val
            head = head!.next
        }
        return sum
    }
}
