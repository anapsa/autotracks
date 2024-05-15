//
//  ContentView.swift
//  aautotracks
//
//  Created by Ana Paula Sá Barreto Paiva da Cunha on 14/05/24.
//


import SwiftUI
import Foundation
//import SpotifyWebAPI

struct ContentView: View {
    @State var tempoViagem: Int? = nil
    @State var trocaCor: [Bool] = [false,false,false,false,false,false]
    @ObservedObject var designSystem: DesignSystem
    
    mutating func changeArray(index: Int) {
        self.trocaCor[index] = true
    }
    
    var body: some View {
        ZStack(alignment: .leading) {
            designSystem.color.background
            VStack (alignment: .leading, spacing: 26) {
                Text("Gênero Musical")
                //primeira linha de generos musicais
                HStack(alignment: .top, spacing: 52) {
                    //botao para selecionar mbp
                    Button(action: {
                        designSystem.color = .init(background: .azulClaro, foreground: .azulMedio, text: .azulEscuro)
                            trocaCor[0] = true
//                        changeArray(index: 0)
                    }, label: {
                        ZStack {
                            if trocaCor[0] {
                                designSystem.color.text
                                Text("MBP")
                                    .foregroundStyle(designSystem.color.foreground)
                            } else {
                                designSystem.color.foreground
                                Text("MBP")
                                    .foregroundStyle(designSystem.color.text)
                            }
                                
                        
                        }
                        .cornerRadius(20)
                    }
                    )
                    .frame(width:78, height:78)
                    //botao para selecionar samba
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        ZStack {
                            designSystem.color.foreground
                            Text("Samba")
                                .foregroundStyle(designSystem.color.text)
                        }
                        .cornerRadius(20)
                    }
                    )
                    .frame(width:78, height:78)
                    //botao para selecionar rock
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        ZStack {
                            designSystem.color.foreground
                            Text("Rock")
                                .foregroundStyle(designSystem.color.text)
                        }
                        .cornerRadius(20)
                    }
                    )
                    .frame(width:78, height:78)
                }
                .frame(maxWidth: .infinity)
                //segunda linha de generos musicais
                HStack(alignment: .top, spacing: 52) {
                    //botao para selecionar rap
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        ZStack {
                            designSystem.color.foreground
                            Text("Rap")
                                .foregroundStyle(designSystem.color.text)
                        }
                        .cornerRadius(20)
                    }
                    )
                    .frame(width:78, height:78)
                    //botao para selecionar funk
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        ZStack {
                            designSystem.color.foreground
                            Text("Funk")
                                .foregroundStyle(designSystem.color.text)
                        }
                        .cornerRadius(20)
                    }
                    )
                    .frame(width:78, height:78)
                    //botao para selecionar pop
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        ZStack {
                            designSystem.color.foreground
                            Text("Pop")
                                .foregroundStyle(designSystem.color.text)
                        }
                        .cornerRadius(20)
                    }
                    )
                    .frame(width:78, height:78)
                }
                .frame(maxWidth: .infinity)
                Text("Tempo de Viagem")
                TextField("  Digite o tempo da sua viagem na forma 00:00  ", value: $tempoViagem, format:.number)
                    .background(
                        designSystem.color.foreground
                            .clipShape(.rect(cornerRadius:20))
                    )
                Text("Seu humor")
                HStack(alignment:.top, spacing: 23) {
                    ForEach(0..<5) { _ in
                        Button(action: {}) {
                            Image(systemName: "star.fill")
                                .foregroundColor(designSystem.color.foreground)
                                .font(.system(size: 37))
                        }
                    }
                    
                }
                .frame(maxWidth: .infinity)
                Text("Sua quantidade de sono")
                HStack(alignment:.top, spacing: 23) {
                    ForEach(0..<5) { _ in
                        Button(action: {}) {
                            Image(systemName: "star.fill")
                                .foregroundColor(designSystem.color.foreground)
                                .font(.system(size: 37))
                        }
                    }
                    
                }
                .frame(maxWidth: .infinity)
                
            }
            .keyboardType(.numberPad)
            .padding()
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView( designSystem: .init(color: .init(background: .amareloEscuro, foreground: .amareloMedio, text: .amareloClaro)))
}


