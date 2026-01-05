//
//  Solution.swift
//
//  Created by Richard Cho on 2021-03-02.
//


//public class ListNode {
//    public var val: Int
//    public var next: ListNode?
//    public init() { self.val = 0; self.next = nil; }
//    public init(_ val: Int) { self.val = val; self.next = nil; }
//    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
//}

class Solution {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        guard var current = head else { return head }
        
        let result = current
        
        while var next = current.next {
            if current.val == next.val {
                while let nextDiffer = next.next {
                    if current.val != nextDiffer.val {
                        current.next = nextDiffer
                        next = nextDiffer
                        break
                    }
                    next = nextDiffer
                }
                if next.next == nil && current.val == next.val {
                    current.next = nil
                    break
                }
            }
            current = next
        }
        return result
    }
}
