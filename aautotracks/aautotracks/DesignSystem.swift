//
//  DesignSystem.swift
//  aautotracks
//
//  Created by Ana Paula Sá Barreto Paiva da Cunha on 15/05/24.
//
//arquivo utilizado para definir uma classe para um observed object
//usado para trocar as cores do aplicativo dependendo do genero musical escolhido
import Foundation
import SwiftUI

//uma classe que obedece ao protocolo observableobject
class DesignSystem: ObservableObject{
    @Published var color: AccentColor
    init(color: AccentColor) {
        self.color = color
    }
}
//define quais são as accentcolors
struct AccentColor: Equatable {
    let background: Color
    let foreground: Color
    let text: Color
}
//indica quais tons do arquivo de colors representa cada um
extension AccentColor {
    static let blue: AccentColor = .init(background: .azulClaro, foreground: .azulMedio, text: .azulEscuro)
    static let yellow: AccentColor = .init(background: .amareloClaro, foreground: .amareloMedio, text: .amareloEscuro)
    static let pink: AccentColor = .init(background: .rosaClaro, foreground: .rosaMedio, text: .rosaEscuro)
    static let purple: AccentColor = .init(background: .roxoClaro, foreground: .roxoMedio, text: .roxoEscuro)
    static let green: AccentColor = .init(background: .verdeClaro, foreground: .verdeMedio, text: .verdeEscuro)
    static let orange: AccentColor = .init(background: .laranjaClaro, foreground: .laranjaMedio, text: .laranjaEscuro)
    static let `default`: AccentColor = .init(background: .fundopadrao, foreground: .mediopadrao, text: .escuropadrao)
}
