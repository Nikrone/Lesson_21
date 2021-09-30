//
//  ViewController.swift
//  Lesson_21
//
//  Created by Evgeniy Nosko on 30.09.21.
//

import UIKit

class ViewController: UIViewController {
    
    var zhenya:Person?
    var mazda:Car = Car(name: "Mazda")

    override func viewDidLoad() {
        super.viewDidLoad()
        
        zhenya = Person(name: "Zhenya", car: mazda)
        zhenya?.car = mazda
        mazda.owner = zhenya
        
        zhenya = nil
        
    }

}


// unowned используется тогда, когда точно уверены что не будет-nil!

class Person {
    var name: String
    unowned var car: Car
    
    init(name: String, car: Car) {
        self.name = name
        self.car = car
        print("Person allocated")
    }
    
    deinit {
        print("Person deallocated")
    }
}


class Car {
    var name: String
    var owner: Person?
    
    init(name: String) {
        self.name = name
        print("Car allocated")
    }
    
        deinit {
            print("Car deallocated")
        }
}
