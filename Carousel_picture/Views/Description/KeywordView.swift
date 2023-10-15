//
//  KeywordView.swift
//  Carousel_picture
//
//  Created by Аня Беликова on 15.10.2023.
//

import SwiftUI

struct KeywordView: View {
    var word: String
    
    var body: some View {
        
        HStack {
            Text("\(word)")
                .font(.title3)
                .foregroundColor(.gray)
            
            Button(action: {}) {
                Image(systemName: "xmark")
                    .foregroundColor(.gray)
            }
        }
        .padding()
        .background(
            Rectangle()
                .foregroundColor(.accentColor)
                .opacity(0.1)
                .frame(height: 40)
                .cornerRadius(10)
        )
        .lineLimit(1)
    }
}

struct KeywordView_Previews: PreviewProvider {
    static var previews: some View {
        KeywordView(word: "какое-то длинное слово")
    }
}
