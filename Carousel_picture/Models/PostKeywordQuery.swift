//
//  PostKeywordQuery.swift
//  Carousel_picture
//
//  Created by Аня Беликова on 15.10.2023.
//

import Foundation


struct Keyword: Decodable {
    
    let keyword: String
}

struct PostKeywordQuery: Decodable {

    let keyword: String
    
}
