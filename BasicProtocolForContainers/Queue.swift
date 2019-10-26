//
//  Queue.swift
//  BasicProtocolForContainers
//
//  Created by XCodeClub on 2019-10-26.
//  Copyright © 2019 Ikhtiyor Nurmatov. All rights reserved.
//

import Foundation

// Классическая универсальная очередь(FIFO)

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

// Оптимизированная универсальная очередь

//public struct Queue<T>: CustomStringConvertible, Container {
//    fileprivate var array = [T?]()
//    fileprivate var head = 0
//
//    public var isEmpty: Bool {
//        return count == 0
//    }
//
//    public var count: Int {
//        return array.count - head
//    }
//
//    public mutating func enqueue(_ element: T) {
//        array.append(element)
//    }
//
//    public mutating func add(_ item: T) {
//        self.enqueue(item)
//    }
//
//    public mutating func dequeue() -> T? {
//        guard head < array.count, let element = array[head] else { return nil }
//
//        array[head] = nil
//        head += 1
//
//        let percentage = Double(head)/Double(array.count)
//        if array.count > 50 && percentage > 0.25 {
//            array.removeFirst(head)
//            head = 0
//        }
//
//        return element
//    }
//
//    public var front: T? {
//        if isEmpty {
//            return nil
//        } else {
//            return array[head]
//        }
//    }
//
//    public subscript(position: Int) -> T? {
//        return array[position]
//    }
//
//    public var description: String {
//        return array.description
//    }
//}
