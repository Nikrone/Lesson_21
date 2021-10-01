//
//  ViewController.swift
//  Lesson_21
//
//  Created by Evgeniy Nosko on 30.09.21.
//

import UIKit

protocol ViewControllerDelegate: AnyObject {
    func doSomething()
}

// unowned используется тогда, когда точно уверены что не будет-nil!
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var closure: (Bool) -> (Bool) = { boolVar in
            boolVar
            print(2345)
            
            return boolVar
        }
        
    }
    
    @IBAction private func buttonPressed() {
        guard let secondVC = UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else {return}
        secondVC.delegate = self
        navigationController?.pushViewController(secondVC, animated: true)
    }

}


extension ViewController: ViewControllerDelegate {
    func doSomething() {
        print(123)
    }
}


