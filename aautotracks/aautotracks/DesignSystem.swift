//
//  DesignSystem.swift
//  aautotracks
//
//  Created by Ana Paula Sá Barreto Paiva da Cunha on 15/05/24.
//

import Foundation
import SwiftUI

class DesignSystem: ObservableObject{
    @Published var color: AccentColor
    init(color: AccentColor) {
        self.color = color
    }
}

struct AccentColor {
    let background: Color
    let foreground: Color
    let text: Color
}
