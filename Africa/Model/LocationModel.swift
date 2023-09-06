//
//  LocationModel.swift
//  Africa
//
//  Created by Ashkan Amin on 7/20/22.
//

import Foundation
import MapKit

struct NationalParkLocation: Codable,Identifiable {
    var id:String
    var image:String
    var latitude:Double
    var longitude:Double
    
    // Computed Property
    var location:CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
