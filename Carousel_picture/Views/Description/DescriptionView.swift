//
//  DescriptionView.swift
//  Carousel_picture
//
//  Created by Аня Беликова on 14.10.2023.
//

import SwiftUI

struct DescriptionView: View {
    @State var keyword: String
    @State var isPresentedView = false
    
    var body: some View {
        ZStack{
            Color(UIColor(red: 145/255, green: 145/255, blue: 145/255, alpha: 0.25))
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text("Please do keyword search")
                    .font(.title)
                    .padding(.top, 40)
                
                TextField("Enter keywords", text: $keyword)
                    .padding(.vertical, 12)
                    .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                    .background(Color(UIColor(red: 145/255, green: 145/255, blue: 145/255, alpha: 0.3)))
                    .cornerRadius(10)
                    .keyboardType(.webSearch)
                
                Spacer()
                
                NavigationLink(destination: EmailView(email: "") ) {
                    
                    Text("CONTINUE")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.vertical, 18)
                        .frame(maxWidth: .infinity)
                        .background(Color(.systemBlue))
                        .cornerRadius(15)
                    
                }
                .padding(.top, 40)
            }
            .padding()
        }
    }
}

struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionView(keyword: "")
    }
}
