//
//  ViewController.swift
//  PracticaTableViews
//
//  Created by Alumno on 11/5/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    let restaurants = [Restaurant(name: "Basil Thai Restaurant & Bar", distance: 0.81, reviews: 1038, address: "1175 Folsom St, SoMa", category: "Thai, Seafood, Salad", review: "Mmm. Maybe I was really hungry. Maybe it was just really good. But I'll be back if I'm in the area and looking for some Thai food.", price: "$$"), Restaurant(name: "Basil Thai Restaurant & Bar", distance: 0.81, reviews: 1038, address: "1175 Folsom St, SoMa", category: "Thai, Seafood, Salad", review: "Mmm. Maybe I was really hungry. Maybe it was just really good. But I'll be back if I'm in the area and looking for some Thai food.", price: "$$")]
    let identifier = "cell"
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(restaurants)
        return restaurants.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier) as! RestaurantTableViewCell
        let restaurant = restaurants[indexPath.row]
        
        cell.lblName.text = restaurant.name
        cell.lblDistance.text = "\(restaurant.distance) mi"
        cell.lblAddress.text = restaurant.address
        cell.lblPrice.text = restaurant.price
        cell.lblCategory.text = restaurant.category
        cell.lblReview.text = restaurant.review
        cell.lblNoReviews.text = "\(restaurant.reviews) reviews"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

