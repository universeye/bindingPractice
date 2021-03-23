//
//  SFSymbols.swift
//  bindingPractice
//
//  Created by Terry Kuo on 2021/3/23.
//

import Foundation
import SwiftUI

enum SFSymbols: String, View {
    case night = "moon.stars.fill"
    case day = "sun.haze.fill"
    
    var body: some View {
        return Image(systemName: self.rawValue)
    }
}
