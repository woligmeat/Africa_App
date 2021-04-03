//
//  VideoModel.swift
//  AfricaApp
//
//  Created by Damian Pedrycz on 03/04/2021.
//

import Foundation


struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed property
    var thumbnail: String {
        "video-\(id)"
    }
    
    
}
