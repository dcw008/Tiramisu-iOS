//
//  HomeViewController.swift
//  Tiramisu
//
//  Created by Derrick Wong on 6/16/17.
//  Copyright © 2017 Derrick Wong. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase
import Firebase

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var listings: [Listing]?
    var user: FIRUser?
    var ref: FIRDatabaseReference!
    


    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.estimatedRowHeight = 400

        //set the reference at the listings endpoint
        ref = FIRDatabase.database().reference(withPath: "Listings")

        ref.observe(FIRDataEventType.value, with: { (snapshot) in
            //print(snapshot)
            var tempArray: [Listing] = []
            for listing in snapshot.children {
                //let localListing = listing as! Listing
                //print("listing \(listing)")
                let localListing = Listing(snapshot: listing as! FIRDataSnapshot)
                tempArray.append(localListing)
            }
            
            //print("TEMP ARRAY \(tempArray)")
            self.listings = tempArray
            //print("Listings IN THE BLOCK: \(self.listings)")
            self.tableView.reloadData()
            
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //returns number of rows to populate the tableView
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if listings != nil{
            return listings!.count
        } else{
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "ListingCell", for: indexPath) as! ListingCell
        cell.listing = listings?[indexPath.row]
        return cell
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
