//
//  MapViewController.swift
//  FestivalNieuwpoort
//
//  Created by mobapp01 on 30/01/2020.
//  Copyright © 2020 Ehb. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController,MKMapViewDelegate, CLLocationManagerDelegate {
    
    
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    let locationManager = CLLocationManager.init()
    var data:DataSourceNavigation?
    
    let initialLocation = CLLocation(latitude: 51.154666, longitude: 2.730471)
    let searchRadius: CLLocationDistance = 500
    override func viewDidLoad() {
        super.viewDidLoad()
        data = DataSourceNavigation.init()
        mapView.addAnnotations(data!.places)
        
        mapView.delegate = self
        let coordinateRegion = MKCoordinateRegion.init(center: initialLocation.coordinate, latitudinalMeters: searchRadius * 2.0, longitudinalMeters: searchRadius * 2.0)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    
    // Do any additional setup after loading the view.
    
    
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        
        if let annotation = annotation as? PointOfImportance{
            let identifier = "pin"
            var view:MKPinAnnotationView
            
            if let dequeuedView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier) as? MKPinAnnotationView{
                dequeuedView.annotation = annotation
                view = dequeuedView
            }else{
                view = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
                view.canShowCallout = true
                view.animatesDrop = true
                
                if annotation.categorie == "stages"{
                    view = MKPinAnnotationView(annotation: annotation, reuseIdentifier: "stagePin")
                    view.pinTintColor = UIColor.blue
                }
                if annotation.categorie == "Food & Drinks"{
                    view = MKPinAnnotationView(annotation: annotation, reuseIdentifier: "foodPin")
                    view.pinTintColor = UIColor.orange
                }
            }
            return view
        }
        return nil
    }
    
    
    
    @IBAction func switchMap(_ sender: UISegmentedControl) {
        mapView.removeAnnotations(mapView.annotations)
        switch sender.selectedSegmentIndex  {
        case 0: mapView.mapType = .standard
        for item in data!.places{
            mapView.addAnnotation(item)
            }
            
        case 1: mapView.mapType = .standard
        for item in data!.places{
            if item.categorie == "stages"{
                mapView.addAnnotation(item)
            }
            }
        case 2:   mapView.mapType = .standard
        for item in data!.places{
            if item.categorie == "Food & Drinks"{
                mapView.addAnnotation(item)
            }
            }
            
        default:print("dit is onmogelijk")
        }
        
    }
    
    
}
