//
//  ShowPlaylist.swift
//  aautotracks
//
//  Created by Ana Paula Sá Barreto Paiva da Cunha on 20/05/24.
//

import SwiftUI

struct ShowPlaylist: View {
    @ObservedObject var designSystem: DesignSystem
    var body: some View {
        ZStack(alignment: .center) {
            designSystem.color.foreground
            VStack(alignment: .leading) {
                Text("Sua seleção de músicas está pronta!")
                    .foregroundStyle(designSystem.color.text)
                Button(action: {
                    openURL("https://open.spotify.com/playlist/725l33CAeDAm2uqspi2mff?si=be17e77241df4ba5")
                }, label: {
                    ZStack {
                        designSystem.color.text
                        Text("Clique aqui para acessar sua ideal playlist no spotify :)")
                            .foregroundStyle(designSystem.color.foreground)
                    }
                    .cornerRadius(20)
                }
                )
                .frame(width:338, height:104)
                /*Image(ImageResource.exemplombp)
                    .resizable()
                    .scaledToFit()
                */
            }
        }
    }
    func openURL(_ urlString: String) {
           if let url = URL(string: urlString) {
               UIApplication.shared.open(url)
           }
       }
}


