//
//  SecondViewController.swift
//  Lesson_21
//
//  Created by Evgeniy Nosko on 30.09.21.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {
    var delegate: ViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        delegate?.doSomething()
    }

}
