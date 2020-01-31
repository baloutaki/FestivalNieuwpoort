//
//  DataSourceNavigation.swift
//  FestivalNieuwpoort
//
//  Created by mobapp01 on 30/01/2020.
//  Copyright © 2020 Ehb. All rights reserved.
//

import Foundation
import MapKit

class DataSourceNavigation{
    
    var places: [PointOfImportance]
       
       init() {
           places = [PointOfImportance]()
        places.append(PointOfImportance.init(coordinate:CLLocationCoordinate2DMake( 51.153482, 2.730385), title: "Paliters", categorie: "Food & Drinks"))
        places.append(PointOfImportance.init(coordinate:CLLocationCoordinate2DMake( 51.154020,2.726694), title: "Kaizen", categorie: "Food & Drinks"))
        places.append(PointOfImportance.init(coordinate:CLLocationCoordinate2DMake( 51.154909,2.731941), title: "Pekker", categorie: "Food & Drinks"))
        places.append(PointOfImportance.init(coordinate:CLLocationCoordinate2DMake( 51.154323,2.731040), title: "Sowrdfish stage", categorie: "stages"))
        places.append(PointOfImportance.init(coordinate:CLLocationCoordinate2DMake( 51.154343,2.727435), title: "Lobster stage", categorie: "stages"))
        places.append(PointOfImportance.init(coordinate:CLLocationCoordinate2DMake( 51.153893,2.725740), title: "Shrimps stage", categorie: "stages"))
        
        

     }
}
