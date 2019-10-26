//
//  Queue.swift
//  BasicProtocolForContainers
//
//  Created by XCodeClub on 2019-10-26.
//  Copyright © 2019 Ikhtiyor Nurmatov. All rights reserved.
//

import Foundation

public struct Queue<T>: CustomStringConvertible, Container {
    private var array = [T]()
    

    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public var count: Int {
       return array.count
    }
    
    public mutating func enqueue(_ element: T) {
        array.append(element)
    }
    
    public mutating func add(_ item: T) {
        self.enqueue(item)
    }
    
    public mutating func dequeue() -> T? {
        if isEmpty {
            return nil
        } else {
            return array.removeFirst()
        }
    }
    
    public var front: T? {
        return array.first
    }
    
    public subscript(position: Int) -> T? {
        return array[position]
    }
    
    public var description: String {
        return array.description
    }
}
