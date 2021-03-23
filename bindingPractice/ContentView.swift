//
//  ContentView.swift
//  bindingPractice
//
//  Created by Terry Kuo on 2021/3/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var isDayView = true
    @State var isShowingSheet = false
    
    var body: some View {
        ZStack {
            VStack {
                WeatherView(color: isDayView ? .blue : .black, sfsymbols: isDayView ? .day : .night, text: isDayView ? "day" : "night")
                Button(action: { isShowingSheet.toggle() }, label: {
                    Text("Change day View")
                        .frame(width: 280, height: 50)
                })
            
            }
        }
        .sheet(isPresented: $isShowingSheet, content: {
            ChoosingView(isDayView: $isDayView)
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherView: View {
    
    @State var isShowingSheet = false
    
    var color: Color = .blue
    var sfsymbols: SFSymbols
    var text: String
    
    var body: some View {
        ZStack {
            color.ignoresSafeArea()
            VStack {
                sfsymbols
                    .font(.system(size: 80))
                    .foregroundColor(.white)
                Text(text)
                    .font(.system(size: 80))
                    .foregroundColor(.white)
                
                
            }
            
            
        }
    }
}
