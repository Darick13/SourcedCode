//
//  MatViewController.swift
//  SourcedCode
//
//  Created by Darick McBride on 1/21/18.
//  Copyright © 2018 Darick McBride. All rights reserved.
//

import UIKit

class MatViewController: UIViewController {

    var mat:Material = Material()

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var matLabel: UILabel!
    @IBOutlet weak var sourceLabel: UILabel!
    @IBOutlet weak var envrLabel: UILabel!
    @IBOutlet weak var laborConditionLabel: UILabel!

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

        titleLabel.text = mat.name
        matLabel.text = mat.name
        sourceLabel.text = mat.source
        envrLabel.text = mat.eco
        laborConditionLabel.text = mat.worker

         setRating(rating: mat.rating)
      
        // Do any additional setup after loading the view.
    }

    @IBAction func exit(_ sender: Any) {
        navigationController!.popViewController(animated: true)
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
