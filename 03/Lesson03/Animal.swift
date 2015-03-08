//
//  Animal.swift
//  Lesson03
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class Animal: NSObject {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    func prettyAnimalName() -> String {
        return "Animal name: " + self.name
    }
}
//
//override a function in the animal class - i love animals or something like that - use that class and put it into the array