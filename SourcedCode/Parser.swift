//
//  Parser.swift
//  SourcedCode
//
//  Created by Darick McBride on 1/20/18.
//  Copyright © 2018 Darick McBride. All rights reserved.
//

import Foundation


func getProductList() -> [Product] {
    var products = [Product]()
    var productLines = productData.components(separatedBy: "***")
    var materialLines = materialData.components(separatedBy: "***")
    var componentLines = componentData.components(separatedBy: "***")

    var materials = [Material]()
    for matString in materialLines {
        if matString == "" { break }
        var material = Material(input: matString)
        materials.append(material)
    }

    var components = [Component]()
    for compLine in componentLines {
        if compLine == "" { break }
        var component = Component(input: compLine, materials: materials)
        components.append(component)
    }

    for prodLine in productLines {
        if prodLine == "" { break }
        var product = Product(input: prodLine , components: components)
        products.append(product)
    }


    return products
}
