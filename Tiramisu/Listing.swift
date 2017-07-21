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
import FirebaseDatabase

class Listing: NSObject {
    
    //unique id referencing the food in Firebase
    var listingId: String?
    
    //description of the food
    var listingDescription: String?
    
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
    
    
    init(snapshot: FIRDataSnapshot){
        if snapshot.value as? NSDictionary != nil{
            print("initializer is called")
            let dict = snapshot.value as! NSDictionary
            //initializer being called
            self.listingDescription = dict["Description"] as? String
            self.location = dict["Location"] as? String
            self.name = dict["Name"] as? String
            self.photoUrl = dict["Photo_url"] as? String
            self.price = dict["Price"] as? String
            self.rating = dict["Rating"] as? Int
            self.servings = dict["Servings"] as? Int
            self.status = dict["Status"] as? Int
        

        
        } else{
            print("initialization failed!")
            
        }
        
        
        
            
        
            
        
       
        
        
        
        
    }
}
