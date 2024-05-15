//
//  aautotracksApp.swift
//  aautotracks
//
//  Created by Ana Paula Sá Barreto Paiva da Cunha on 14/05/24.
//

import SwiftUI

@main
struct aautotracksApp: App {
    var designSystem: DesignSystem = .init(color: .init(background: .fundopadrao, foreground: .escuropadrao, text: .mediopadrao))
    var body: some Scene {
        WindowGroup {
            ContentView(designSystem: designSystem)
        }
    }
}
