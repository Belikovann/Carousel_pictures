//
//  SettingColor.swift
//  Carousel_picture
//
//  Created by Аня Беликова on 14.10.2023.
//

import SwiftUI

struct SettingColor: View {
    @Binding var value: Double
    var sliderAccentColor: Color

    var body: some View {
        HStack {
            Text("\(lround(value))")
            Slider(value: $value, in: 0...255, step: 1)
        }
        .padding()
    }
}

struct SettingColor_Previews: PreviewProvider {
    static var previews: some View {
        SettingColor(value: .constant(100), sliderAccentColor: Color.green)
    }
}


struct SliderAndTexts: View {
    
    @Binding var colorValue: Double
    
    var body: some View {
        HStack {
            Text("\(lround(colorValue))")
                .font(.headline)
                .frame(width: 35)
                .foregroundColor(.white)
            Slider(value: $colorValue, in: 0...255, step: 1)
        }.padding(.horizontal, 10)
    }
}
