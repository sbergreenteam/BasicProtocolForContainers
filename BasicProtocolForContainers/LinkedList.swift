//
//  LinkedList.swift
//  BasicProtocolForContainers
//
//  Created by XCodeClub on 2019-10-26.
//  Copyright © 2019 Ikhtiyor Nurmatov. All rights reserved.
//

import Foundation

public class Node<T> {
    public var value: T
    public var next: Node<T>?
    public weak var previous: Node<T>?
    
    public init(value: T) {
        self.value = value
    }
    
}

class LinkedList<T>: CustomStringConvertible, Container  {
    
    private var head: Node<T>?
    private var tail: Node<T>?
    
    public var isEmpty: Bool {
        return head == nil
    }
    
    var count: Int {
        guard var node = head else { return 0 }
        
        var count = 1
        while let next = node.next {
            node = next
            count += 1
        }
        return count
    }
    
    public var first: Node<T>? {
        return head
    }
    
    public var last: Node<T>? {
        return tail
    }
    
    public func append(value: T) {
        let newNode = Node(value: value)
        if let tailNode = tail {
            newNode.previous = tailNode
            tailNode.next = newNode
        } else {
            head = newNode
        }
        tail = newNode
    }
    
    public func add(_ item: T) {
        append(value: item)
    }
    
    
    
    public func nodeAt(index: Int) -> Node<T>? {
        if index >= 0 {
            var node = head
            var i = index
            while node != nil {
                if i == 0 { return node }
                i -= 1
                node = node!.next
            }
        }
        return nil
    }
    
    public subscript(position: Int) -> T? {
        if let node = nodeAt(index: position) {
            return node.self.value
        } else {
            return nil
        }
    }
    
    public var description: String {
        var text = "["
        var node = head
        
        while node != nil {
            text += "\(node!.value)"
            node = node!.next
            if node != nil { text += ", " }
        }
        return text + "]"
    }
    
    
}
