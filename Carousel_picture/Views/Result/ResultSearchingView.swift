//
//  ResultSearchingView.swift
//  Carousel_picture
//
//  Created by Аня Беликова on 14.10.2023.
//

import SwiftUI

struct ResultSearchingView: View {
    @State var isPresentedView = false
    
    var body: some View {
        VStack {
            VStack {
                
                Text("🎉🎉🎉")
                
                Text("Your wishes have been taken into account. Please follow the instructions in the mail.")
                    .padding()
                    .multilineTextAlignment(.center)
                
            }
            .font(.largeTitle)
            
            Button(action: {self.isPresentedView.toggle()}) {
                Text("FINISH")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.vertical, 18)
                    .frame(maxWidth: .infinity)
                    .background(Color(.systemBlue))
                    .cornerRadius(15)
            }
            .fullScreenCover(isPresented: $isPresentedView) {
                        HomeView()
                    }
        }
        .padding()
    }
}

struct ResultSearchingView_Previews: PreviewProvider {
    static var previews: some View {
        ResultSearchingView()
    }
}
