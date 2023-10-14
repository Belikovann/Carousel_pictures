//
//  ResultSearchingView.swift
//  Carousel_picture
//
//  Created by Аня Беликова on 14.10.2023.
//

import SwiftUI

struct ResultSearchingView: View {
    var body: some View {
        VStack {
            
            Text("🎉🎉🎉")
            
            Text("Your wishes have been taken into account. Please follow the instructions in the mail.")
                .padding()
                .multilineTextAlignment(.center)
        }
        .font(.largeTitle)
    }
}

struct ResultSearchingView_Previews: PreviewProvider {
    static var previews: some View {
        ResultSearchingView()
    }
}
