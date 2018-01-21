//
//  ProductViewController.swift
//  SourcedCode
//
//  Created by Andrew Cope on 1/20/18.
//  Copyright © 2018 Darick McBride. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var product = Product()
    
    @IBOutlet weak var mapView: MapView!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var companyLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var countriesLabel: UILabel!
    @IBOutlet weak var co2Label: UILabel!
    @IBOutlet weak var waterLabel: UILabel!
    
    @IBOutlet weak var img_5: UIImageView!
    @IBOutlet weak var img_4: UIImageView!
    @IBOutlet weak var img_3: UIImageView!
    @IBOutlet weak var img_2: UIImageView!
    @IBOutlet weak var img_1: UIImageView!
    
    func setRating(rating:Int) {
        img_5.image = (rating == 5) ? #imageLiteral(resourceName: "5_active") : #imageLiteral(resourceName: "5_inactive")
        img_4.image = (rating == 4) ? #imageLiteral(resourceName: "4_active") : #imageLiteral(resourceName: "4_inactive")
        img_3.image = (rating == 3) ? #imageLiteral(resourceName: "3_active") : #imageLiteral(resourceName: "3_inactive")
        img_2.image = (rating == 2) ? #imageLiteral(resourceName: "2_active") : #imageLiteral(resourceName: "2_inactive")
        img_1.image = (rating == 1) ? #imageLiteral(resourceName: "1_active") : #imageLiteral(resourceName: "1_inactive")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = product.name
        companyLabel.text = "Apple"
        yearLabel.text = "\(product.year)"
        countriesLabel.text = "53"
        co2Label.text = "20 tons"
        waterLabel.text = "2 gallons"
        
        var averageRating = 0.0
        var numMaterials = 0.0
        for comp in product.components {
            for mat in comp.materials {
                averageRating += Double(mat.rating)
                numMaterials += 1.0
            }
        }
        
        averageRating = averageRating / numMaterials
        var finalRating = Int(averageRating.rounded())
        setRating(rating: finalRating)
        
        var countries = [String]()
        for comp in product.components {
            for mat in comp.materials {
                countries.append(mat.origin)
            }
        }
        mapView.countries = countries
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! SearchCell
        cell.titleLabel.text = product.components[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return product.components.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    @IBAction func exit(_ sender: Any) {
        navigationController!.popViewController(animated: true)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ComponentViewController
        destinationVC.copo = product.components[tableView.indexPathForSelectedRow!.row]
    }

}
