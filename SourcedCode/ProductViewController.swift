//
//  ProductViewController.swift
//  SourcedCode
//
//  Created by Andrew Cope on 1/20/18.
//  Copyright © 2018 Darick McBride. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {

    var product = Product()
    
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
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
