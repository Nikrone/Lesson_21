//
//  ViewController.swift
//  Lesson_21
//
//  Created by Evgeniy Nosko on 30.09.21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

class Person {
    var name: String
    var car: Car?
    
    init(name: String) {
        self.name = name
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
        print("Person allocated")
    }
    
        deinit {
            print("Person deallocated")
        }
}
