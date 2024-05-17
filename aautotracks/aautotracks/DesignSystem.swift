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

struct AccentColor: Equatable {
    let background: Color
    let foreground: Color
    let text: Color
}

extension AccentColor {
    static let blue: AccentColor = .init(background: .azulClaro, foreground: .azulMedio, text: .azulEscuro)
    static let yellow: AccentColor = .init(background: .amareloClaro, foreground: .amareloMedio, text: .amareloEscuro)
    static let pink: AccentColor = .init(background: .rosaClaro, foreground: .rosaMedio, text: .rosaEscuro)
    static let purple: AccentColor = .init(background: .roxoClaro, foreground: .roxoMedio, text: .roxoEscuro)
    static let green: AccentColor = .init(background: .verdeClaro, foreground: .verdeMedio, text: .verdeEscuro)
    static let orange: AccentColor = .init(background: .laranjaClaro, foreground: .laranjaMedio, text: .laranjaEscuro)
    static let `default`: AccentColor = .init(background: .fundopadrao, foreground: .mediopadrao, text: .escuropadrao)
}
