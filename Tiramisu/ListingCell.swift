//
//  ListingCell.swift
//  Tiramisu
//
//  Created by Derrick Wong on 6/16/17.
//  Copyright © 2017 Derrick Wong. All rights reserved.
//


import UIKit
import AFNetworking


class ListingCell: UITableViewCell {

    @IBOutlet weak var listingImage: UIImageView!
    
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var servings: UILabel!
    
    var listing: Listing!{
        didSet{
            
           
            if let imageUrlString = listing.photoUrl{
                let url = URL(string: imageUrlString)
                self.listingImage.setImageWith(url!)
            
            }
        
            self.name.text = listing.name
            self.price.text = listing.price
            self.location.text = listing.location
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
