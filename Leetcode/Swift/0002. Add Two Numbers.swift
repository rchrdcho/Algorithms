//
//  AddTwoNumbers(2).swift
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
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let head = ListNode(0)
        var l1 = l1, l2 = l2, current = head, carry = 0
        
        while (l1 != nil || l2 != nil) {
            let x = (l1 != nil) ? l1!.val : 0
            let y = (l2 != nil) ? l2!.val : 0
            let sum = x + y + carry
            
            carry = Int(floor(Double(sum) / Double(10)))
            current.next = ListNode(sum % 10)
            current = current.next!
            
            if (l1 != nil) { l1 = l1!.next }
            if (l2 != nil) { l2 = l2!.next }
        }
        
        if (carry > 0) { current.next = ListNode(1) }
        
        return head.next;
    }
}

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

