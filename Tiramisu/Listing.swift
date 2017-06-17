//
//  Listing.swift
//  Tiramisu
//
//  Data model for Listing object
//
//  Created by Derrick Wong on 6/16/17.
//  Copyright © 2017 Derrick Wong. All rights reserved.
//

import UIKit

class Listing: NSObject {
    
    //unique id referencing the food in Firebase
    var listingId: String?
    
    //description of the food
    var description: String?
    
    //where the food is available
    var location: String?
    
    //name of the food
    var name: String?
    
    //url to the food's image
    var photoUrl: String?
    
    //price of the listed food
    var price: String?
    
    //rating of the chef out of 5
    var rating: Int?
    
    //available servings
    var servings: Int?
    
    var status: Int?
    
    //patrons who reserved the current listing
    //might want to pick a faster data structure
    var patronsList: [String]?
    
}
