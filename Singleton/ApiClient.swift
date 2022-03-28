//
//  ApiClient.swift
//  Singleton
//
//  Created by Jigneshkumar Patil on 2022/03/29.
//

import Foundation


// - Allow extention of the class
// - So do not set the class to Final
class ApiClient {
    static let instance = ApiClient()
    
    // - By making private initialiser:
    //   -  Making the initialiser private to restric users from
    //   -  creating more instanace of ApiClinet() class.
    private init(){}
}

// -    One can extend the class by adding functionality
// -    For change behaviour of the class, one should use subclassing

// Example of subclass
class AnotherAPIClass: ApiClient {
    
}

// Example of Extention of the class
// This will allows user to extend the functionality of the class.

extension ApiClient {
    // Add features here. 
}


// This way we know that there will only be one instance alway
let client = ApiClient.instance
