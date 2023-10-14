//
//  PageControl.swift
//  Carousel_picture
//
//  Created by Аня Беликова on 14.10.2023.
//

import SwiftUI

struct PageControl: UIViewRepresentable {

    var maxPages: Int
    var currentPage: Int
    
    func makeUIView(context: Context) -> UIPageControl {
        
        let control = UIPageControl()
        control.backgroundStyle = .prominent
        control.numberOfPages = maxPages
        control.currentPage = currentPage
        
        return control
    }
   
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
        uiView.currentPage = currentPage
    }
}


