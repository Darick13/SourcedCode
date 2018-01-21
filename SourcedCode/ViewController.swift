//
//  ViewController.swift
//  SourcedCode
//
//  Created by Darick McBride on 1/20/18.
//  Copyright © 2018 Darick McBride. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var products = [Product]()

    override func viewDidLoad() {
        super.viewDidLoad()

        //read in values here.
        products = getProductList()
        print("did it work?")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

