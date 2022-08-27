//
//  ViewController.swift
//  MapkitApp
//
//  Created by Ahmed Assiri on 29/01/1444 AH.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // نستدعي الفنك من االفيو ددلود
        let initialLoc = CLLocation(latitude: 18.546389, longitude: 42.048889)
        // distance لتحديد نصف القطر وكم يظهر الزوم على الشاشه
setStartingLocation(location: initialLoc, distance: 10000)    }

    
   // لجعل الزوم على مكان محدد كمدينه او محل او مركز استخدم الداله التالية  او range scoping
    // determine place : we will use func
    // latitude and longitude خطوط العرض والطول
    func setStartingLocation(location: CLLocation , distance: CLLocationDistance)
    {
        let region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: distance , longitudinalMeters: distance)
    
    mapView.setRegion(region, animated: true)
}
}
