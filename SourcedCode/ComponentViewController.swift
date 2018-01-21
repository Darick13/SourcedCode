//
//  ComponentViewController.swift
//  SourcedCode
//
//  Created by Darick McBride on 1/21/18.
//  Copyright © 2018 Darick McBride. All rights reserved.
//

import UIKit

class ComponentViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var copo:Component = Component()

    @IBOutlet weak var manufacturerLabel: UILabel!
    @IBOutlet weak var assembledLable: UILabel!
    @IBOutlet weak var descriptionLable: UILabel!

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

        manufacturerLabel.text = copo.manufacturer
        assembledLable.text = copo.country
        descriptionLable.text = copo.description

        var averageRating = 0.0
        for mat in copo.materials {
            averageRating += Double(mat.rating)
        }
        averageRating /= Double(copo.materials.count)
        let finalRating = Int(averageRating.rounded())
        setRating(rating: finalRating)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return copo.materials.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! SearchCell
        cell.titleLabel.text = copo.materials[indexPath.row].name
        return cell
    }
    
    
    @IBAction func exit(_ sender: Any) {
        navigationController!.popViewController(animated: true)
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
