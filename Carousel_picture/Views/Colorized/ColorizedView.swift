//
//  ColorizedView.swift
//  Carousel_picture
//
//  Created by Аня Беликова on 14.10.2023.
//

import SwiftUI

struct ColorizedView: View {
    @State private var red = 0.0
    @State private var green = 160.0
    @State private var blue = 139.0
    
    
    var body: some View {
        NavigationView {
            ZStack{
                    Color(UIColor(red: 145/255, green: 145/255, blue: 145/255, alpha: 0.25))
                        .ignoresSafeArea()
                    VStack(spacing: 5) {
                        Text("Please set primary color")
                            .font(.title)
                            .padding(.top, 20)
                        
                        ColorZone(redValue: Double(red), greenValue: Double(green), blueValue: Double(blue))
                        SettingColor(value: $red, sliderAccentColor: .red)
                            .accentColor(.red)
                        SettingColor(value: $green, sliderAccentColor: .green)
                            .accentColor(.green)
                        SettingColor(value: $blue, sliderAccentColor: .blue)
                        
                        NavigationLink(destination: DescriptionView(keyword: "") ) {
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
}

struct ColorizedView_Previews: PreviewProvider {
    static var previews: some View {
        ColorizedView()
    }
}



