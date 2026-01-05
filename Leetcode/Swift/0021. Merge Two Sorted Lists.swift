//
//  MergeTwoSortedLists(21).swift
//  
//
//  Created by Richard Cho on 2020-08-26.
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
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var l1 = l1, l2 = l2, result = ListNode()
        let resultHead = result
        
        while l1 != nil && l2 != nil {
            if l1!.val <= l2!.val {
                result.next = l1
                l1 = l1?.next
            } else {
                result.next = l2
                l2 = l2?.next
            }
            result = result.next!
        }
        
        if l1 != nil {
            result.next = l1
        } else {
            result.next = l2
        }
        
        return resultHead.next
    }

}
