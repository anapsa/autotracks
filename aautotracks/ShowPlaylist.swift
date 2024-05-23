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
                
                Text("autotracks").font(.custom("Lexend-Bold", size: 32))
                    .frame(maxWidth: .infinity)
                    .offset(y: 47)
                    .foregroundColor(designSystem.color.foreground)
                
                Spacer().frame(height:120)
                Text("Sua seleção de músicas está pronta!")
                    .foregroundStyle(designSystem.color.text)
                    .font(.custom("Lexend-Bold", size: 16))
                Spacer().frame(height:26)
                if(definePlaylist == 1) {
                    Button(action: {
                        openURL("https://open.spotify.com/playlist/4ETUl8mrjAGX4ailZd12EU?si=33b5dd23828d4eb0")
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
                    WebView(urlString: "https://open.spotify.com/embed/playlist/74ETUl8mrjAGX4ailZd12EU")
                            .frame(width: 338, height: 352)
                            .cornerRadius(20)
                }
            
                if (definePlaylist == 2) {
                    Button(action: {
                        openURL("https://open.spotify.com/playlist/597eOB6m3uW9QsjNsjimPe?si=4f2d9b117da14209")
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
                    WebView(urlString: "https://open.spotify.com/embed/playlist/597eOB6m3uW9QsjNsjimPe")
                            .frame(width: 338, height: 352)
                            .cornerRadius(20)
                }
                if (definePlaylist == 3) {
                    Button(action: {
                        openURL("https://open.spotify.com/playlist/6FPEkZsAiNHZ6HkfoIwS7A?si=f8ff73a22ad74615")
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
                    WebView(urlString: "https://open.spotify.com/embed/playlist/6FPEkZsAiNHZ6HkfoIwS7A?utm_source=generator&theme=0")
                            .frame(width: 338, height: 352)
                            .cornerRadius(20)
                }
                if (definePlaylist == 4) {
                    Button(action: {
                        openURL("https://open.spotify.com/playlist/4cRDpUvDDEogugTZzdVZQg?si=e3df8f67dffa49e0")
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
                    WebView(urlString: "https://open.spotify.com/embed/playlist/4cRDpUvDDEogugTZzdVZQg?utm_source=generator&theme=0")
                            .frame(width: 338, height: 352)
                            .cornerRadius(20)
                }
                if (definePlaylist == 5) {
                    Button(action: {
                        openURL("https://open.spotify.com/playlist/11dM8taYmHnul6Js4vNDTY?si=76eba5f24d424d57")
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
                    WebView(urlString: "https://open.spotify.com/embed/playlist/11dM8taYmHnul6Js4vNDTY?si=355e75a74f804e69?utm_source=generator&theme=0")
                            .frame(width: 338, height: 352)
                            .cornerRadius(20)
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
                if (definePlaylist == 7) {
                    Button(action: {
                        openURL("https://open.spotify.com/playlist/725l33CAeDAm2uqspi2mff?si=1bfb2b611b754d03")
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
                    WebView(urlString: "https://open.spotify.com/embed/playlist/725l33CAeDAm2uqspi2mff?utm_source=generator")
                            .frame(width: 338, height: 352)
                            .cornerRadius(20)
                } 
                if (definePlaylist == 8) {
                    Button(action: {
                        openURL("https://open.spotify.com/playlist/597eOB6m3uW9QsjNsjimPe?si=834bc5968d574600")
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
                    WebView(urlString: "https://open.spotify.com/embed/playlist/597eOB6m3uW9QsjNsjimPe?si=834bc5968d574600?utm_source=generator")
                            .frame(width: 338, height: 352)
                            .cornerRadius(20)
                }
               if (definePlaylist == 9) {
                   Button(action: {
                       openURL("https://open.spotify.com/playlist/6FPEkZsAiNHZ6HkfoIwS7A?si=36684f48eba24196")
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
                   WebView(urlString: "https://open.spotify.com/embed/playlist/6FPEkZsAiNHZ6HkfoIwS7A?si=834bc5968d574600?utm_source=generator")
                           .frame(width: 338, height: 352)
                           .cornerRadius(20)
               }
               if (definePlaylist == 11) {
                   Button(action: {
                       openURL("https://open.spotify.com/playlist/11dM8taYmHnul6Js4vNDTY?si=d289686142784252")
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
                   WebView(urlString: "https://open.spotify.com/embed/playlist/11dM8taYmHnul6Js4vNDTY?si=d289686142784252?utm_source=generator")
                           .frame(width: 338, height: 352)
                           .cornerRadius(20)
               }
               if (definePlaylist == 10) {
                   Button(action: {
                       openURL("https://open.spotify.com/playlist/4cRDpUvDDEogugTZzdVZQg?si=c18375636d394fea")
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
                   WebView(urlString: "https://open.spotify.com/embed/playlist/4cRDpUvDDEogugTZzdVZQg?si=c18375636d394fea?utm_source=generator")
                           .frame(width: 338, height: 352)
                           .cornerRadius(20)
               }
               if (definePlaylist == 12) {
                   Button(action: {
                       openURL("https://open.spotify.com/playlist/3bUAJ6OXty3yJq2XvaPvF7?si=04dc4bd7b62749c0")
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
                   WebView(urlString: "https://open.spotify.com/embed/playlist/3bUAJ6OXty3yJq2XvaPvF7?si=04dc4bd7b62749c0?utm_source=generator")
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


