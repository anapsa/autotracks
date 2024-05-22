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
    @State private var selectedTime = Calendar.current.startOfDay(for: Date())
    @State var generatePlaylist = false 
    @State var trocaCor: [Bool] = [false,false,false,false,false,false]
    @ObservedObject var designSystem: DesignSystem
    @State var humourClass = -1
    @State var sleepClass = -1
    @State var definePlaylist = -1
    func calculate() {
        if((humourClass + sleepClass)>5) { //bom humor
            if(trocaCor[0]) {definePlaylist = 1}
            else if(trocaCor[1]) {definePlaylist = 2}
            else if(trocaCor[2]) {definePlaylist = 3}
            else if(trocaCor[3]) {definePlaylist = 4}
            else if(trocaCor[4]) {definePlaylist = 5}
            else {definePlaylist = 6}
        } else {
            if(trocaCor[0]) {definePlaylist = 7}
            else if(trocaCor[1]) {definePlaylist = 8}
            else if(trocaCor[2]) {definePlaylist = 9}
            else if(trocaCor[3]) {definePlaylist = 10}
            else if(trocaCor[4]) {definePlaylist = 11}
            else {definePlaylist = 12}
        }
    }
    //função para indicar se o usuario preencheu todos os campos antes de gerar o botão
    
    func showButton() -> Bool {
        for (element) in trocaCor{
            if element {
                if(humourClass != -1 && sleepClass != -1 && selectedTime != Calendar.current.startOfDay(for: Date())) {
                    return true
                }
            }
        }
        return false
    }
    
    var body: some View {
        //navigationstack principal
        //NavigationStack {
            //scrollview da navigationstacl
           // ScrollView {
                //zstack para ordenar todos os componentes da tela
                ZStack(alignment: .leading) {
                    //define a cor do background
                    designSystem.color.text
                        .ignoresSafeArea(.all)
                    //vstack para alinhar todos os componentes verticalmente
                   
                    Color(designSystem.color.background)
                        .cornerRadius(30)
                        .offset(y: 170)
                    
                    VStack (alignment: .leading) {
                        //espaço definido entre a navigation bar e o primeiro componente
                        Spacer().frame(height:26)
                        Text("Gênero Musical")
                            .font(.custom("Lexend-Bold", size: 16))
                        //primeira linha de generos musicais
                        HStack(alignment: .top, spacing: 52) {
                            //botao para selecionar mbp
                            Button(action: {
                                designSystem.color = .blue
                                //seta como false todos os campos de trocaCor
                                trocaCor = Array(repeating: false, count: trocaCor.count)
                                //seta como true o campo selecionado
                                trocaCor[0] = true
                                
                            }, label: {
                                ZStack {
                                    if trocaCor[0] {
                                        designSystem.color.text
                                        Text("MBP")
                                            .font(.custom("Lexend-Bold", size: 16))
                                            .foregroundStyle(designSystem.color.foreground)
                                    } else {
                                        designSystem.color.foreground
                                        Text("MBP")
                                            .font(.custom("Lexend-Bold", size: 16))
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
                                        Text("SAMBA")
                                            .font(.custom("Lexend-Bold", size: 16))
                                            .foregroundStyle(designSystem.color.foreground)
                                    } else {
                                        designSystem.color.foreground
                                        Text("SAMBA")
                                            .font(.custom("Lexend-Bold", size: 16))
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
                                        Text("ROCK")
                                            .font(.custom("Lexend-Bold", size: 16))
                                            .foregroundStyle(designSystem.color.foreground)
                                    } else {
                                        designSystem.color.foreground
                                        Text("ROCK")
                                            .font(.custom("Lexend-Bold", size: 16))
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
                                        Text("RAP")
                                            .font(.custom("Lexend-Bold", size: 16))
                                            .foregroundStyle(designSystem.color.foreground)
                                    } else {
                                        designSystem.color.foreground
                                        Text("RAP")
                                            .font(.custom("Lexend-Bold", size: 16))
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
                                        Text("FUNK")
                                            .font(.custom("Lexend-Bold", size: 16))
                                            .foregroundStyle(designSystem.color.foreground)
                                    } else {
                                        designSystem.color.foreground
                                        Text("FUNK")
                                            .font(.custom("Lexend-Bold", size: 16))
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
                                        Text("POP")
                                            .font(.custom("Lexend-Bold", size: 16))
                                            .foregroundStyle(designSystem.color.foreground)
                                    } else {
                                        designSystem.color.foreground
                                        Text("POP")
                                            .font(.custom("Lexend-Bold", size: 16))
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
                            .font(.custom("Lexend-Bold", size: 16))
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
                            .font(.custom("Lexend-Bold", size: 16))
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
                            .font(.custom("Lexend-Bold", size: 16))
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
                        //Spacer().frame(height: 26)
                        
    
                        
                    }
                    .padding()
                    
                    VStack(){
                        Spacer()
                        if showButton() {
                            Button(action: {
                                generatePlaylist = true
                                calculate()
                            }) {
                                Image(systemName: "circle.fill")
                                    .foregroundColor(designSystem.color.text)
                                    .font(.system(size: 104))
                            }
                            .frame(maxWidth: .infinity)
                        }
                    }
                    .padding(.bottom,26)
                    if generatePlaylist {
                        
                        //chama a nova view "por cima" da view anterior
                        ShowPlaylist(designSystem: designSystem, generatePlaylist: $generatePlaylist, definePlaylist: $definePlaylist)
                    }
                    
                }
                .ignoresSafeArea(.all)
                .animation(.easeIn, value: designSystem.color)
                .containerRelativeFrame(.vertical)
                .navigationTitle("AutoTracks")
                .toolbarBackground(.visible, for: .navigationBar)
                .toolbarBackground(designSystem.color.text, for: .navigationBar)
                .toolbarColorScheme(.dark, for: .navigationBar)
                
            }
            //.ignoresSafeArea(.all)
        //}
    //}
}

#Preview {
    ContentView( designSystem: .init(color: .init(background: .fundopadrao, foreground: .mediopadrao, text: .escuropadrao)))
}


