//
//  DescriptionView.swift
//  Carousel_picture
//
//  Created by Аня Беликова on 14.10.2023.
//

import SwiftUI

struct DescriptionView: View {
    @State var keyword: String = ""
    @State var keywords: [String] = []
    @State var isPresentedView = false
    @State var errorAlert = false
    
    var body: some View {
        ZStack{
            Color(UIColor(red: 145/255, green: 145/255, blue: 145/255, alpha: 0.25))
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text("Please do keyword search")
                    .font(.title)
                    .padding(.top, 20)
                
                TextField("Enter keywords", text: $keyword)
                    .padding(.vertical, 12)
                    .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                    .background(Color(UIColor(red: 145/255, green: 145/255, blue: 145/255, alpha: 0.3)))
                    .cornerRadius(10)
                    .keyboardType(.webSearch)
                    .overlay(
                        Button(action: {
                            if keyword.count >= 3 {
                                keywords.append(keyword)
                                keyword = ""
                            } else {
                                errorAlert = true
                            }
                        }) {
                            Image(systemName: "magnifyingglass")
                            //                                .padding(.leading, 300)
                            
                                .foregroundColor(.gray)
                        }
                            .frame(maxWidth: .infinity, alignment: .trailing)
                            .padding()
                    )
                
                ScrollView {
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: .infinity)), GridItem(.adaptive(minimum: 190))], alignment: .leading, spacing: 1) {
                        ForEach(keywords, id: \.self) { word in
                            KeywordView(word: word)
                        }
                    }
                }
                
                
                Spacer()
                if !keywords.isEmpty {
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
        }
        .padding()
            
            .alert(isPresented: $errorAlert) {
                Alert(title: Text("Please enter at least 3 symbols"),
                      dismissButton: .default(Text("Ok"))
            )}
        }
    }
}

struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionView(keyword: "")
    }
}
