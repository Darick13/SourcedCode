//
//  Datatypes.swift
//  SourcedCode
//
//  Created by Darick McBride on 1/20/18.
//  Copyright © 2018 Darick McBride. All rights reserved.
//

import Foundation


struct Product {
    var name = String()
    var year = Int()
    var assembled = String()
    var components = [Component]()

    // id, name, year, assembled, components (by id)
    init(input:String, components:[Component]) {
        var parts = input.components(separatedBy: "\n")
        self.name = parts[1]
        self.year = Int(parts[2])!
        self.assembled = parts[3]

        var compNums = parts[4].components(separatedBy: " ")
        for num in compNums {
            self.components.append(components[Int(num)!])
        }
    }
    
    init() { }
}

struct Component {
    var name = ""
    var manufacturer = ""
    var country = ""
    var description = ""
    var materials = [Material]()

    init() {}

    // id, name, manufactuer, country, description, materials (by id)
    init(input:String, materials:[Material]) {
        var parts = input.components(separatedBy: "\n")

        self.name = parts[1]
        self.manufacturer = parts[2]
        self.country = parts[3]
        self.description = parts[4]

        var matNums = parts[5].components(separatedBy: " ")
        for num in matNums {
            self.materials.append(materials[Int(num)!])
        }
    }
}

struct Material {
    var name = ""
    var origin = ""
    var source = ""
    var eco = ""
    var worker = ""
    var rating = 0

    init() {}

    
    func getEmojiRating() -> String {
        switch rating {
            case 1: return "😭"
            case 2: return "🙁"
            case 3: return "😐"
            case 4: return "🙂"
            case 5: return "😄"
            default: fatalError("rating must be 1-5")
        }
    }

    // id, name, ecological effects, worker conditions, rating
    init(input:String) {
        var parts = input.components(separatedBy: "\n")

        self.name = parts[1]
        self.origin = parts[2]
        self.source = parts[3]
        self.eco = parts[4]
        self.worker = parts[5]
        self.rating = Int(parts[6])!
    }
}


