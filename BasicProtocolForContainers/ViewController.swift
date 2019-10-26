//
//  ViewController.swift
//  BasicProtocolForContainers
//
//  Created by XCodeClub on 2019-10-26.
//  Copyright © 2019 Ikhtiyor Nurmatov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        testLinkedList()
        testQueue()
        
    }
    
    func testLinkedList() {
        let dogBreeds = LinkedList<String>()
        dogBreeds.append(value: "Labrador")
        dogBreeds.append(value: "Bulldog")
        dogBreeds.append(value: "Beagle")
        dogBreeds.append(value: "Husky")
        dogBreeds.add("Reks")
        dogBreeds.add("Muxtar")
//        print(dogBreeds)
//        print(dogBreeds.count)
//        print(dogBreeds[10] ?? "None")
//        print(dogBreeds[3] ?? "None")
        
        let numbers = LinkedList<Int>()
        numbers.append(value: 5)
        numbers.append(value: 10)
        numbers.append(value: 15)
        numbers.add(21)
        numbers.add(50)
//        print(numbers)
//        print(numbers.count)
//        print(numbers[10] ?? "None")
//        print(numbers[3] ?? "None")
        
        let str1 = """
        \(dogBreeds)
        \(dogBreeds.count)
        \(dogBreeds[10] ?? "None")
        \(dogBreeds[3] ?? "None")
        
        \(numbers)
        \(numbers.count)
        \(String(describing: numbers[10] ?? nil))
        \(String(describing: numbers[3] ?? nil))
        """
        textView.text = str1
    }
    
    
    
    func testQueue() {
        var queue = Queue<Int>()
        queue.enqueue(10)
        queue.enqueue(15)
        queue.enqueue(30)
        queue.add(77)
        queue.add(100)
//        print(queue)
//        print(queue.count)
//        print(queue[3] ?? "None")
        
        var queue2 = Queue<String>()
        queue2.enqueue("Flower")
        queue2.enqueue("Car")
        queue2.enqueue("Tree")
        queue2.add("Toy")
        queue2.add("Game")
        guard let first = queue2.dequeue() else { return }
           
//        print(queue2)
        
        let str2 = """
        
        
        \(queue)
        \(queue.count)
        \(String(describing: queue[3] ?? nil))
        
        \(first)
        \(queue2)
        """
        textView.text.append(str2)
    }
    
    
    
}

