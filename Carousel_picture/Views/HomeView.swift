//
//  HomeView.swift
//  Carousel_picture
//
//  Created by Аня Беликова on 14.10.2023.
//

import SwiftUI

struct HomeView: View {
    @State var selectedTab: Slide = slides[0]
    
    var body: some View {
        ZStack {
            
            GeometryReader{proxy in
                
                let frame = proxy.frame(in: .global)
                
                Image(selectedTab.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: frame.width, height: frame.height, alignment: .center)
                    .cornerRadius(0)
            }
            .ignoresSafeArea()
            
            VStack(spacing: 5) {
                
                Text("Let`s enjoy")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Text("Slides")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .padding(.bottom, 30)
                
                VStack {
                    GeometryReader{proxy in
                        
                        let frame = proxy.frame(in: .global)
                        
                        TabView(selection: $selectedTab) {
                            ForEach(slides){ slide in
                                
                                Image(slide.image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: frame.width-10, height: frame.height, alignment: .center)
                                    .cornerRadius(5)
                                    .tag(slide)
                            }
                        }
                        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                    }
                    .frame(height: UIScreen.main.bounds.height / 2.2)
                    
                    Text(selectedTab.title)
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.top, 10)
                        .padding(.bottom)
                    // PageControl
                    

                    PageControl(maxPages: slides.count, currentPage: getIndex())
                }
                .padding(.top)
                .padding(.horizontal, 10)
                .padding(.bottom, 15)
                .background(Color.white)
//                .clipShape(CustomShape())
                .cornerRadius(10)
                .padding(.horizontal, 20)
                
                
                Button(action: {}) {
                    Text("GET STARTED")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.vertical, 18)
                        .frame(maxWidth: .infinity)
                        .background(Color(.systemBlue))
                        .cornerRadius(15)
                }
                .padding(.top, 30)
                .padding(.horizontal)
            }
        }
    }
    
    func getIndex() -> Int {
        
        let index = slides.firstIndex { (slide) -> Bool in
            return selectedTab.id == slide.id
        } ?? 0
        return index
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
