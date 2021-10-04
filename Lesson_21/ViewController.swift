//
//  ViewController.swift
//  Lesson_21
//
//  Created by Evgeniy Nosko on 30.09.21.
//

import UIKit


// unowned используется тогда, когда точно уверены что не будет-nil!
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        var closure: (Bool) -> (Bool) = { boolVar in
//            boolVar
//            print(2345)
//
//            return boolVar
//        }
        save (closure: {
            print(23)
        })
        
        DispatchQueue.global().async {
            for i in 0 ..<  1_000 {
                print("\(i)")
            }
        }
    }

    func save(closure: @escaping (() -> ())) {
//        узнать когда завершилось сохранение
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            closure()
        }
    }
    
    
    @IBAction private func buttonPressed() {
        guard let secondVC = UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else {return}
        secondVC.completion = {
            print(456)
        }
        navigationController?.pushViewController(secondVC, animated: true)
    }

}


