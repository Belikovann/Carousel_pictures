//
//  Slide.swift
//  Carousel_picture
//
//  Created by Аня Беликова on 14.10.2023.
//

import SwiftUI

struct Slide: Identifiable, Hashable {
    
    var id = UUID().uuidString
    var image: String
    var title: String
}

var slides = [

    Slide(image: "p2", title: "Sunset"),
    Slide(image: "p6", title: "Car park"),
    Slide(image: "p5", title: "Family"),
    Slide(image: "p3", title: "Home"),
    Slide(image: "p4", title: "Hills"),
    Slide(image: "p1", title: "Village")
    
]
