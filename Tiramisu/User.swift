//
//  User.swift
//  Tiramisu
//  
//  Class definition for a user
//
//  Created by Derrick Wong on 6/16/17.
//  Copyright © 2017 Derrick Wong. All rights reserved.
//

import UIKit



class User: NSObject {
    
    //uid referring to the user
    var uid : String?
    
    //the user's username
    var username: String?
    
    //the user's rating (if he is a chef)
    var rating: Int?
    
    //the number of listings available
    var listingCount: Int?
    
    //object containging details of user's food preferences 
    var preferences: Preference?


}
