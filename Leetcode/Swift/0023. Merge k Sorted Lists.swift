//
//  0023. Merge k Sorted Lists.swift
//
//
//  Created by Richard Cho on 2024-11-07.
//

import Foundation
import HeapModule


public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

extension ListNode: Comparable, Equatable {
    public static func < (lhs: ListNode, rhs: ListNode) -> Bool {
        return lhs.val < rhs.val
    }
    
    public static func == (lhs: ListNode, rhs: ListNode) -> Bool {
        return lhs.val == rhs.val
    }
}

class Solution {
    
    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
        var heap = Heap<ListNode>()
        
        for node in lists {
            guard let node = node else { continue }
            heap.insert(node)
        }
        
        let head = ListNode(0)
        var current = head
        
        while (!heap.isEmpty) {
            let node = heap.popMin()
            current.next = node
            current = current.next!
            
            guard let _ = node!.next else { continue }
            heap.insert(node!.next!)
        }
        return head.next
    }
    
}

func buildList (with array: [[Int]]) -> [ListNode] {
    var lists: [ListNode] = []
    for values in array {
        guard values.count > 1 else {
            lists.append(ListNode(values[0]))
            continue
        }
        var current = ListNode(values.last!)
        for i in stride(from: values.count - 2, through: 0, by: -1) {
            current = ListNode(values[i], current)
        }
        lists.append(current)
    }
    return lists
}

