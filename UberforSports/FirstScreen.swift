//
//  FirstScreen.swift
//  UberforSports
//
//  Created by Shreshta Manu on 10/30/15.
//  Copyright © 2015 Shreshta. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class FirstScreen: UIViewController {
    
    @IBOutlet weak var Map: MKMapView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let location1 = CLLocationCoordinate2DMake(34.032546, -118.287578)
        
        let annotaion1 = MKPointAnnotation()
        
        annotaion1.coordinate = location1
        annotaion1.title = "BasketBall"
        annotaion1.subtitle = "Charlie"
        
        let span = MKCoordinateSpan(latitudeDelta: 0.022, longitudeDelta: 0.022)
        let region = MKCoordinateRegionMake(location1, span)
        Map.setRegion(region, animated: true)
        Map.addAnnotation(annotaion1)
        
        let location2 = CLLocationCoordinate2DMake(34.032546, -118.297578)
        
        let annotaion2 = MKPointAnnotation()
        
        annotaion2.coordinate = location2
        annotaion2.title = "Tennis"
        annotaion2.subtitle = "Mark"
        Map.addAnnotation(annotaion2)
        
        let location3 = CLLocationCoordinate2DMake(34.038546, -118.287578)
        
        let annotaion3 = MKPointAnnotation()
        
        annotaion3.coordinate = location3
        annotaion3.title = "Soccer"
        annotaion3.subtitle = "Clint"
        Map.addAnnotation(annotaion3)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
