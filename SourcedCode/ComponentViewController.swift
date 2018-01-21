//
//  ComponentViewController.swift
//  SourcedCode
//
//  Created by Darick McBride on 1/21/18.
//  Copyright © 2018 Darick McBride. All rights reserved.
//

import UIKit

class ComponentViewController: UIViewController {

    var copo:Component = Component()

    @IBOutlet weak var manufacturerLabel: UILabel!
    @IBOutlet weak var assembledLable: UILabel!
    @IBOutlet weak var descriptionLable: UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()

        manufacturerLabel.text = copo.manufacturer
        assembledLable.text = copo.country
        descriptionLable.text = copo.description

        // Do any additional setup after loading the view.
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
