//
//  ApiClient.swift
//  Singleton
//
//  Created by Jigneshkumar Patil on 2022/03/29.
//

import Foundation

class ApiClient {
    static let instance = ApiClient()
    
    // By making private initialiser:
    // Making the initialiser private to restric users from
    // creating more instanace of ApiClinet() class.
    private init(){}
}

// This way we know that there will only be one instance alway
let client = ApiClient.instance
