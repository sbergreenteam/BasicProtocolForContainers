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
        print(dogBreeds.description)
        
        let numbers = LinkedList<Int>()
        numbers.append(value: 5)
        numbers.append(value: 10)
        numbers.append(value: 15)
        numbers.add(21)
        print(numbers.description)
        
        print(dogBreeds.count)
        print(numbers.count)

        print(dogBreeds[10])
        print(dogBreeds[3])
        
        print(numbers[10])
        print(numbers[3])
    }


}

