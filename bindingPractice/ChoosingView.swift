//
//  ChoosingView.swift
//  bindingPractice
//
//  Created by Terry Kuo on 2021/3/23.
//

import SwiftUI

struct ChoosingView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var isDayView: Bool
    
    var body: some View {
        VStack {
            Button(action: {
                presentationMode.wrappedValue.dismiss()
                isDayView = true
            }, label: {
                HStack {
                    SFSymbols.day
                    Text("Set Day View")
                        
                }
                .frame(width: 280, height: 50)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.7), radius: 2, x: 1, y: 2)
            })
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
                isDayView = false
            }, label: {
                HStack {
                    SFSymbols.night
                    Text("Set Night View")
                }
                .frame(width: 280, height: 50)
                .background(Color.black.opacity(0.8))
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.7), radius: 2, x: 1, y: 2)
            })
            .padding()
        }
    }
}

struct ChoosingView_Previews: PreviewProvider {
    static var previews: some View {
        ChoosingView(isDayView: .constant(true))
    }
}
