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
    @State private var selectedTime = Date()
    @State var trocaCor: [Bool] = [false,false,false,false,false,false]
    @ObservedObject var designSystem: DesignSystem
    @State var humourClass = -1
    @State var sleepClass = -1
    func showButton() -> Bool {
        for (element) in trocaCor{
            if element {
                if(humourClass != -1 && sleepClass != -1) {
                    return true
                }
            }
        }
        return false
    }
    var body: some View {
        ZStack(alignment: .leading) {
            designSystem.color.background
            VStack (alignment: .leading) {
            
                Text("Gênero Musical")
                //primeira linha de generos musicais
                HStack(alignment: .top, spacing: 52) {
                    //botao para selecionar mbp
                    Button(action: {
                        designSystem.color = .blue
                            trocaCor = Array(repeating: false, count: trocaCor.count)
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
                    Button(action: {
                        designSystem.color = .yellow
                            trocaCor = Array(repeating: false, count: trocaCor.count)
                            trocaCor[1] = true
                    }, label: {
                        ZStack {
                            if trocaCor[1] {
                                designSystem.color.text
                                Text("Samba")
                                    .foregroundStyle(designSystem.color.foreground)
                            } else {
                                designSystem.color.foreground
                                Text("Samba")
                                    .foregroundStyle(designSystem.color.text)
                            }
                            
                        }
                        .cornerRadius(20)
                    }
                    )
                    .frame(width:78, height:78)
                    //botao para selecionar rock
                    Button(action: {
                        designSystem.color = .green
                        trocaCor = Array(repeating: false, count: trocaCor.count)
                        trocaCor[2] = true
                    }, label: {
                        ZStack {
                            if trocaCor[2]{
                                designSystem.color.text
                                Text("Rock")
                                    .foregroundStyle(designSystem.color.foreground)
                            } else {
                                designSystem.color.foreground
                                Text("Rock")
                                    .foregroundStyle(designSystem.color.text)
                            }
                        }
                        .cornerRadius(20)
                    }
                    )
                    .frame(width:78, height:78)
                }
                .frame(maxWidth: .infinity)
                Spacer().frame(height: 26)
                //segunda linha de generos musicais
                HStack(alignment: .top, spacing: 52) {
                    //botao para selecionar rap
                    Button(action: {
                        designSystem.color = .purple
                        trocaCor = Array(repeating: false, count: trocaCor.count)
                        trocaCor[3] = true
                        //forEach(
                    }, label: {
                        ZStack {
                            if trocaCor[3] {
                                designSystem.color.text
                                Text("Rap")
                                    .foregroundStyle(designSystem.color.foreground)
                            } else {
                                designSystem.color.foreground
                                Text("Rap")
                                    .foregroundStyle(designSystem.color.text)
                            }
                        }
                        .cornerRadius(20)
                    }
                    )
                    .frame(width:78, height:78)
                    //botao para selecionar funk
                    Button(action: {
                        designSystem.color = .orange
                        trocaCor = Array(repeating: false, count: trocaCor.count)
                        trocaCor[4] = true
                        
                    }, label: {
                        ZStack {
                            if trocaCor[4] {
                                designSystem.color.text
                                Text("Funk")
                                    .foregroundStyle(designSystem.color.foreground)
                            } else {
                                designSystem.color.foreground
                                Text("Funk")
                                    .foregroundStyle(designSystem.color.text)
                            }
                        }
                        .cornerRadius(20)
                    }
                    )
                    .frame(width:78, height:78)
                    //botao para selecionar pop
                    Button(action: {
                        designSystem.color = .pink
                        trocaCor = Array(repeating: false, count: trocaCor.count)
                        trocaCor[5] = true
                    }, label: {
                        ZStack {
                            if trocaCor[5] {
                                designSystem.color.text
                                Text("Pop")
                                    .foregroundStyle(designSystem.color.foreground)
                            } else {
                                designSystem.color.foreground
                                Text("Pop")
                                    .foregroundStyle(designSystem.color.text)
                            }
                        }
                        .cornerRadius(20)
                    }
                    )
                    .frame(width:78, height:78)
                }
                .frame(maxWidth: .infinity)
                //separar
                Spacer().frame(height: 26)
                
                
                Text("Tempo de Viagem")
               
                //fazer o datepicker
                DatePicker(     "Select Time",
                                selection: $selectedTime,
                                displayedComponents: .hourAndMinute
                            )
                           
                        .background(Color(designSystem.color.foreground))
                        .labelsHidden() // Oculta o rótulo
                        .cornerRadius(20)
                        .frame(maxWidth: .infinity, maxHeight:26)
                Spacer().frame(height: 26)
                
                
                Text("Seu humor")
                HStack(alignment:.top, spacing: 23) {
                    ForEach(0..<5) { index in
                        Button(action: {
                            humourClass = index
                        }) {
                            if index <= humourClass {
                                Image(systemName: "star.fill")
                                    .foregroundColor(designSystem.color.text)
                                    .font(.system(size: 37))
                            } else {
                                Image(systemName: "star.fill")
                                    .foregroundColor(designSystem.color.foreground)
                                    .font(.system(size: 37))
                            }
                        }
                    }
                    
                }
                .frame(maxWidth: .infinity)
                Spacer().frame(height: 26)
                Text("Sua quantidade de sono")
                HStack(alignment:.top, spacing: 23) {
                    ForEach(0..<5) { index in
                        Button(action: {
                            sleepClass = index
                        }) {
                            if index <= sleepClass {
                                Image(systemName: "star.fill")
                                    .foregroundColor(designSystem.color.text)
                                    .font(.system(size: 37))
                            } else {
                                Image(systemName: "star.fill")
                                    .foregroundColor(designSystem.color.foreground)
                                    .font(.system(size: 37))
                            }
                        }
                    }
                    
                }
                .frame(maxWidth: .infinity)
                Spacer().frame(height: 26)
                if showButton() {
                    Button(action: {}) {
                        Image(systemName: "circle.fill")
                            .foregroundColor(designSystem.color.text)
                            .font(.system(size: 104))
                    }
                    .frame(maxWidth: .infinity)
                }
                
            }
            .keyboardType(.numberPad)
            .padding()
        }
        .ignoresSafeArea()
        .animation(.easeIn, value: designSystem.color)
    }
}

#Preview {
    ContentView( designSystem: .init(color: .init(background: .amareloEscuro, foreground: .amareloMedio, text: .amareloClaro)))
}


