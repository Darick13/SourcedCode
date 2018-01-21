//
//  Raw Data.swift
//  SourcedCode
//
//  Created by Darick McBride on 1/20/18.
//  Copyright © 2018 Darick McBride. All rights reserved.
//

import Foundation


// id, name, manufactuer, country, description, materials (by id)
var componentData = """
0
Battery
Samsung
South Korea
Stores power to run device.
0
***
"""

// id, name, ecological effects, worker conditions, rating
var materialData = """
0
Lithium
Australia
Mines in Australia
Australia uses guidlines to reduce risk of enviromental impact
Dangerous metal, hazardous to workers but Autralia mines use strict safety guidlines
5
***
1
Gold
India
Mines in India
Depletes an extremely valuable, useful, and rare resource
Uses conflict free mines
3
***
2
Aluminum
China
Mines in China
Responisbly mined, reduced impact on enviroment do to new mining techniques
Warkers overworked
4
***
3
Silver
Australia
MInes in Australia
Depletes precius metal
Australias tight regulations make worker condtions safe and ethical
4
***
4
Tungsten
China
China is working towards reducing the evironmental impact of tungsten mining
Frequent inspections have improved working conditions
4
***
5
Chile
Mines in Chile
Copper
Large amount of CO2 production and water use do to outdated mining technology
Worker strikes do to unfair compensation
3
***
6
Tin
Cerro Rico
Mines in Cerro Rico
Machines used for mining create an alarming amount of CO2
Children as young as 6 found working in mines
1
***
7
South Africa
Mines in South Africa
Platinum
Draining supply of very rare but useful metal
Worker strikes do to poor conditions
3
***
8
Cobalt
Congo
Mines in Congo
bad for the environment.
Child labor found at these mines
1
***
9
China
Mines in China
Tantalum
Depletes a valuable resource
Funds warefare in the Democratic Republic of Congo. Apple has pledged to fix this issue but supliers are not 100% conflict free.
2
***
"""


// id, name, year, assembled, components (by id)
var productData = """
0
iPhone X
2017
China
0
***
"""
