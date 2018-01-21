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
0 6 1
***
1
Case
Apple
China
Is used for phone housing
2
***
2
Screen
Corning
United States
Provides a surface for the display
10
***
3
Capacitor
Murata Manufacturing Co. Ltd.
Japan
Important electronic component for chips
9
***
4
Display
Samsung
South Korea
Display for touch devices and computers
5 6
***
5
Chipset
Samsung
South Korea
Used for computer processing
1 4 5 6 7 3
***
6
Logic Board
Samsung
Vietnam
Main housing for electronic structures
1 4 5 6 7 3
***
"""

// id, name, ecological effects, worker conditions, rating
var materialData = """
0
Lithium
Australia
Mines in Australia
Australia uses guidelines to reduce risk of environmental impact
Dangerous metal, hazardous to workers but Australia mines use strict safety guidelines
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
Responsibly mined, reduced impact on environment do to new mining techniques
Workers overworked
4
***
3
Silver
Australia
Mines in Australia
Depletes precious metal
Australias tight regulations make worker conditions safe and fair
3
***
4
Tungsten
China
China is working towards reducing the environmental impact of tungsten mining
Frequent inspections have improved working conditions
4
***
5
Copper
Chile
Mines in Chile
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
2
***
8
Cobalt
Congo
Mines in Congo
Large amount of CO2 produced
Child labor found at these mines
1
***
9
China
Mines in China
Tantalum
Depletes a valuable resource
Funds warfare in the Democratic Republic of Congo. Apple has pledged to fix this issue but suppliers are not 100% conflict free.
2
***
10
United States
Corning Glass Factory in New York
Glass
Produces CO2 but Corning invest heavily in green technology
Workers are unionized and paid fairly
5
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
