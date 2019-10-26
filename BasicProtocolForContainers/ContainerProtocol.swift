//
//  ContainerProtocol.swift
//  BasicProtocolForContainers
//
//  Created by XCodeClub on 2019-10-26.
//  Copyright © 2019 Ikhtiyor Nurmatov. All rights reserved.
//

import Foundation

protocol Container {
    associatedtype Item
    
    mutating func add(_ item: Item)
    
    var count: Int { get }
    
    subscript(position: Int) -> Item? { get }
}
