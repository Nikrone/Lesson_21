//
//  DataManager.swift
//  Lesson_21
//
//  Created by Evgeniy Nosko on 4.10.21.
//

import Foundation

class DataManager {
    
   class func obtainData(completion: @escaping (([String]) -> Void)) {
        DispatchQueue.global().asyncAfter(deadline: .now() + 2) {
            completion(["hello", "all", "there", "!"])
        }
    }
}
