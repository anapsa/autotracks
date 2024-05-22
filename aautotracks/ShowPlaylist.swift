//
//  ShowPlaylist.swift
//  aautotracks
//
//  Created by Ana Paula Sá Barreto Paiva da Cunha on 20/05/24.
//

import SwiftUI
import UIKit
import WebKit


struct WebView: UIViewRepresentable {
    let urlString: String

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ webView: WKWebView, context: Context) {
        if let url = URL(string: urlString) {
            webView.load(URLRequest(url: url))
        }
    }
}
struct ShowPlaylist: View {
    @ObservedObject var designSystem: DesignSystem
    @Binding var generatePlaylist: Bool
    @Binding var definePlaylist: Int
    var body: some View {
        ZStack(alignment: .center) {
            designSystem.color.text
                .ignoresSafeArea(.all)
            //vstack para alinhar todos os componentes verticalmente
           
            Color(designSystem.color.background)
                .cornerRadius(30)
                .offset(y: 170)
            
            VStack(alignment: .center) {
                Spacer().frame(height:208)
                Text("Sua seleção de músicas está pronta!")
                    .foregroundStyle(designSystem.color.text)
                    .font(.custom("Lexend-Bold", size: 16))
                Spacer().frame(height:26)
                if(definePlaylist == 1) {
                    Button(action: {
                        openURL("https://open.spotify.com/playlist/725l33CAeDAm2uqspi2mff")
                    }, label: {
                        ZStack {
                            designSystem.color.text
                            Text("Clique aqui para acessar sua ideal playlist no spotify :)")
                                .font(.custom("Lexend-Bold", size: 16))
                                .foregroundStyle(designSystem.color.foreground)
                        }
                        .cornerRadius(20)
                    }
                    )
                    .frame(width:338, height:104)
                    Spacer().frame(height:52)
                    WebView(urlString: "https://open.spotify.com/embed/playlist/725l33CAeDAm2uqspi2mff")
                            .frame(width: 338, height: 352)
                            .cornerRadius(20)
                }
            
                if (definePlaylist == 2) {
                    Button(action: {
                        openURL("https://open.spotify.com/playlist/4Ht1w8tLF3SETB6z8QIewf?si=4878f755fba645a0")
                    }, label: {
                        ZStack {
                            designSystem.color.text
                            Text("Clique aqui para acessar sua ideal playlist no spotify :)")
                                .font(.custom("Lexend-Bold", size: 16))
                                .foregroundStyle(designSystem.color.foreground)
                        }
                        .cornerRadius(20)
                    }
                    )
                    .frame(width:338, height:104)
                    Spacer().frame(height:52)
                    WebView(urlString: "https://open.spotify.com/embed/playlist/4Ht1w8tLF3SETB6z8QIewf")
                            .frame(width: 338, height: 352)
                            .cornerRadius(20)
                }
                if (definePlaylist == 3) {
                    Button(action: {
                        openURL("https://open.spotify.com/playlist/7GqGufuyZEKwPau7Ng6DEA?si=0ba7258fc2194fe1")
                    }, label: {
                        ZStack {
                            designSystem.color.text
                            Text("Clique aqui para acessar sua ideal playlist no spotify :)")
                                .font(.custom("Lexend-Bold", size: 16))
                                .foregroundStyle(designSystem.color.foreground)
                        }
                        .cornerRadius(20)
                    }
                    )
                    .frame(width:338, height:104)
                    Spacer().frame(height:52)
                    WebView(urlString: "https://open.spotify.com/embed/playlist/7GqGufuyZEKwPau7Ng6DEA?utm_source=generator&theme=0")
                            .frame(width: 338, height: 352)
                            .cornerRadius(20)
                }
                if (definePlaylist == 4) {
                    Button(action: {
                        openURL("https://open.spotify.com/playlist/1quW7XirulEhgX0G1uf6YU?si=16b024c8bc8f4d4b")
                    }, label: {
                        ZStack {
                            designSystem.color.text
                            Text("Clique aqui para acessar sua ideal playlist no spotify :)")
                                .font(.custom("Lexend-Bold", size: 16))
                                .foregroundStyle(designSystem.color.foreground)
                        }
                        .cornerRadius(20)
                    }
                    )
                    .frame(width:338, height:104)
                    WebView(urlString: "https://open.spotify.com/embed/playlist/1quW7XirulEhgX0G1uf6YU?utm_source=generator&theme=0")
                            .frame(width: 338, height: 352)
                            .cornerRadius(20)
                }
                if (definePlaylist == 5) {
                    Button(action: {
                        openURL("https://open.spotify.com/playlist/725l33CAeDAm2uqspi2mff")
                    }, label: {
                        ZStack {
                            designSystem.color.text
                            Text("Clique aqui para acessar sua ideal playlist no spotify :)")
                                .font(.custom("Lexend-Bold", size: 16))
                                .foregroundStyle(designSystem.color.foreground)
                        }
                        .cornerRadius(20)
                    }
                    )
                    .frame(width:338, height:104)
                   
                }
            
                if (definePlaylist == 6) {
                    Button(action: {
                        openURL("https://open.spotify.com/playlist/3Dpjj4UQe2YuyF8saiHFCh?si=c7b4baab13224e16")
                    }, label: {
                        ZStack {
                            designSystem.color.text
                            Text("Clique aqui para acessar sua ideal playlist no spotify :)")
                                .font(.custom("Lexend-Bold", size: 16))
                                .foregroundStyle(designSystem.color.foreground)
                        }
                        .cornerRadius(20)
                    }
                    )
                    .frame(width:338, height:104)
                    Spacer().frame(height:52)
                    WebView(urlString: "https://open.spotify.com/embed/playlist/3Dpjj4UQe2YuyF8saiHFCh?utm_source=generator")
                            .frame(width: 338, height: 352)
                            .cornerRadius(20)
                }
            }
            .ignoresSafeArea(.all)
        
        }.overlay {
            HStack {
                Spacer()
                VStack{
                    Button {
                        generatePlaylist = false
                    } label: {
                        Image(systemName: "xmark")
                            .foregroundColor(designSystem.color.text)
                            .bold()
                    }
                    .padding(.vertical, 190)
                    .padding(.horizontal)
                    Spacer()
                }
            }
        }
    }
    func openURL(_ urlString: String) {
           if let url = URL(string: urlString) {
               UIApplication.shared.open(url)
           }
       }
}


