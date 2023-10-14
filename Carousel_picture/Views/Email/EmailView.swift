//
//  EmailView.swift
//  Carousel_picture
//
//  Created by Аня Беликова on 14.10.2023.
//

import SwiftUI

struct EmailView: View {
    
        @State var email: String
        @State var isPresentedView = false
        
        var body: some View {
            ZStack{
                
                Color(UIColor(red: 145/255, green: 145/255, blue: 145/255, alpha: 0.25))
                    .ignoresSafeArea()
                
                VStack(spacing: 20) {
                    
                    Text("Please specify an email to contact")
                        .multilineTextAlignment(.center)
                        .font(.title)
                        .padding(.top, 40)
                    
                    TextField("Enter email", text: $email)
                        .padding(.vertical, 12)
                        .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                        .background(Color(UIColor(red: 145/255, green: 145/255, blue: 145/255, alpha: 0.3)))
                        .cornerRadius(10)
                        .keyboardType(.emailAddress)
                    
                    Button(action: {self.isPresentedView.toggle()}) {
                        Text("CONTINUE")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.vertical, 18)
                            .frame(maxWidth: .infinity)
                            .background(Color(.systemBlue))
                            .cornerRadius(15)
                    }
                    .fullScreenCover(isPresented: $isPresentedView) {
                                ResultSearchingView()
                            }
                }
                .padding()
            }
        }
    }

    struct EmailView_Previews: PreviewProvider {
        static var previews: some View {
            EmailView(email: "")
        }
    }
