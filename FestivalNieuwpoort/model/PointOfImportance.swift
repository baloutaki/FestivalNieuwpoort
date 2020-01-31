//
//  PointOfImportance.swift
//  FestivalNieuwpoort
//
//  Created by mobapp01 on 30/01/2020.
//  Copyright © 2020 Ehb. All rights reserved.
//

import Foundation
import MapKit

class PointOfImportance: NSObject, MKAnnotation{
    
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var categorie:String
    
    init(coordinate: CLLocationCoordinate2D, title: String?, categorie:String) {
          self.coordinate = coordinate
          self.title = title
        self.categorie = categorie
      }
    
    
    
    
}
