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

    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = mat.name
        matLabel.text = mat.name
        sourceLabel.text = mat.source
        envrLabel.text = mat.eco
        laborConditionLabel.text = mat.worker

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
