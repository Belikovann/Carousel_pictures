//
//  NetworkManager.swift
//  Carousel_picture
//
//  Created by Аня Беликова on 15.10.2023.
//

import Foundation

final class NetworkManager {
    
    static let shared = NetworkManager()
    
    private init() {}
    
    func postKeyword(_ keyword: Keyword) async throws -> PostKeywordQuery {
        
        return PostKeywordQuery(keyword: "cat")
        
    }
}
