//
//  Singleton.swift
//  Singleton
//
//  Created by Jigneshkumar Patil on 2022/03/29.
//

import Foundation
import UIKit


// Module approach

// 0. Main Module
extension InstagramApiClient{
    func loadFeed(completion: ([FeedItem]) -> Void){}
}
extension InstagramApiClient{
    func login(completion: (LoggedInUser) -> Void){}
}


// 1. API Module
class InstagramApiClient {
    static var shared = InstagramApiClient()
    
    // Generic Method:
    func execute(_ : URLRequest, completion: (Data) -> Void){}
    
}

// 2. Login Module

struct LoggedInUser{}

class LoginViewController: UIViewController {
    var login: (((LoggedInUser) -> Void) -> Void)?
    
    func didTapLogingButton() {
        login? { user in
            // Show user's feed screen
        }
    }
}


// 3.  Feed Module

struct FeedItem{}

class FeedViewController: UIViewController {
    var loadFeed: ((([FeedItem])-> Void ) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadFeed? { loadItems in
            // Update UI
        }
    }
}
