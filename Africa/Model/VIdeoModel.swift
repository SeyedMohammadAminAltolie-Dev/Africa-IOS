//
//  VIdeoModel.swift
//  Africa
//
//  Created by Ashkan Amin on 7/20/22.
//

import Foundation

struct Video:Codable,Identifiable {
    let id:String
    let name:String
    let headline:String
    //Computed Property
    var thumbnail:String {
        "video-\(id)"
    }
}
