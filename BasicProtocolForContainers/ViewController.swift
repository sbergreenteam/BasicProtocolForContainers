//
//  ViewController.swift
//  BasicProtocolForContainers
//
//  Created by XCodeClub on 2019-10-26.
//  Copyright © 2019 Ikhtiyor Nurmatov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dogBreeds = LinkedList<String>()
        dogBreeds.append(value: "Labrador")
        dogBreeds.append(value: "Bulldog")
        dogBreeds.append(value: "Beagle")
        dogBreeds.append(value: "Husky")
        dogBreeds.add("Reks")
        print(dogBreeds)

        let numbers = LinkedList<Int>()
        numbers.append(value: 5)
        numbers.append(value: 10)
        numbers.append(value: 15)
        numbers.add(21)
        print(numbers)

        print(dogBreeds.count)
        print(numbers.count)

        print(dogBreeds[10])
        print(dogBreeds[3])

        print(numbers[10])
        print(numbers[3])
        
        
        
        
        var queue = Queue<Int>()
        queue.enqueue(10)
        queue.enqueue(15)
        queue.enqueue(30)
        queue.add(77)
        print(queue)
        print(queue.count)
        print(queue[3])
        
        var queue2 = Queue<String>()
        queue2.enqueue("mad")
        queue2.enqueue("lad")
        queue2.enqueue("sdfsdf")
        queue2.add("tyjytj")
        if let first = queue2.dequeue() {
            print(first)
        }
        print(queue2)
    }


}

