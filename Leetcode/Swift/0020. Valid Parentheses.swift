//
//  ValidParentheses(20).swift
//  
//
//  Created by Richard Cho on 2020-08-26.
//

import Foundation

class Solution {
    func isValid(_ s: String) -> Bool {
        let stack = Stack<Character>()
        
        for character in s {
            if character == "(" || character == "{" || character == "[" {
                stack.push(item: character)
            } else if !stack.isEmpty() && character == ")" && stack.peek() == "(" {
                _ = stack.pop()
            } else if !stack.isEmpty() && character == "}" && stack.peek() == "{" {
                _ = stack.pop()
            } else if !stack.isEmpty() && character == "]" && stack.peek() == "[" {
                _ = stack.pop()
            } else {
                return false
            }
        }
        
        return stack.isEmpty()
    }
}

public final class Stack<E> : Sequence {
    private var first: Node<E>? = nil
    private(set) var count: Int = 0
    
    fileprivate class Node<E> {
        fileprivate var item: E
        fileprivate var next: Node<E>?
        fileprivate init(item: E, next: Node<E>? = nil) {
            self.item = item
            self.next = next
        }
    }
    
    public init() {}
    
    public func push(item: E) {
        if isEmpty() {
            first = Node(item: item)
        } else {
            var cursor: Node<E> = self.first!
            for _ in 0 ..< (count - 1) {
                cursor = cursor.next!
            }
            cursor.next = Node(item: item)
        }
        count += 1
    }
    
    public func pop() -> E? {
        guard first != nil else { return nil }
        defer {
            if count == 1 {
                first = nil
            } else {
                var cursor: Node<E> = first!
                for _ in 0 ..< (count - 2) {
                    cursor = cursor.next!
                }
                cursor.next = nil
            }
            count -= 1
        }
        return last().item
    }
    
    public func peek() -> E? {
        guard first != nil else { return nil }
        return last().item
    }
    
    private func last() -> Node<E> {
        var cursor: Node<E> = first!
        for _ in 0 ..< (count - 1) {
            cursor = cursor.next!
        }
        return cursor
    }
    
    public func isEmpty() -> Bool {
        return count == 0
    }
    
    public struct StackIterator<E> : IteratorProtocol {
        private var current: Node<E>?
        private var count: Int {
            guard current != nil else { return 0 }
            var c: Node<E> = current!, cnt: Int = 0
            while c.next != nil {
                c = c.next!
                cnt += 1
            }
            return cnt
        }
        private var cnt: Int = 0
        
        fileprivate init(_ first: Node<E>?) {
            current = first
        }
        
        public mutating func next() -> E? {
            guard current != nil, count >= cnt
                else { return nil }
            
            var cursor: Node<E> = current!
            for _ in 0..<(count - cnt) {
                cursor = cursor.next!
            }
            cnt += 1
            return cursor.item
        }
        
        public typealias Element = E
    }
    
    public __consuming func makeIterator() -> StackIterator<E> {
        return StackIterator<E>(first)
    }
}

extension Stack: CustomStringConvertible {
    public var description: String {
        return self.reduce(into: "") { $0 += "\($1) " }
    }
}
