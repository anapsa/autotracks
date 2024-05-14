//
//  ContentView.swift
//  aautotracks
//
//  Created by Ana Paula Sá Barreto Paiva da Cunha on 14/05/24.
//


import SwiftUI

struct ContentView: View {
    @State var tempoViagem: Int? = nil
    var body: some View {
        ZStack(alignment: .leading) {
            Color.fundopadrao
            VStack (alignment: .leading, spacing: 26) {
                Text("Gênero Musical")
                //primeira linha de generos musicais
              
                HStack(alignment: .top, spacing: 52) {
                    //botao para selecionar mbp
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        ZStack {
                            Color.mediopadrao
                            Text("MBP")
                                .foregroundStyle(.escuropadrao)
                        }
                        .cornerRadius(20)
                    }
                    )
                    .frame(width:78, height:78)
                    //botao para selecionar samba
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        ZStack {
                            Color.mediopadrao
                            Text("Samba")
                                .foregroundStyle(.escuropadrao)
                        }
                        .cornerRadius(20)
                    }
                    )
                    .frame(width:78, height:78)
                    //botao para selecionar rock
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        ZStack {
                            Color.mediopadrao
                            Text("Rock")
                                .foregroundStyle(.escuropadrao)
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
                            Color.mediopadrao
                            Text("Rap")
                                .foregroundStyle(.escuropadrao)
                        }
                        .cornerRadius(20)
                    }
                    )
                    .frame(width:78, height:78)
                    //botao para selecionar funk
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        ZStack {
                            Color.mediopadrao
                            Text("Funk")
                                .foregroundStyle(.escuropadrao)
                        }
                        .cornerRadius(20)
                    }
                    )
                    .frame(width:78, height:78)
                    //botao para selecionar pop
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        ZStack {
                            Color.mediopadrao
                            Text("Pop")
                                .foregroundStyle(.escuropadrao)
                        }
                        .cornerRadius(20)
                    }
                    )
                    .frame(width:78, height:78)
                }
                .frame(maxWidth: .infinity)
                Text("Tempo de Viagem")
                TextField("Digite o tempo da sua viagem na forma 00:00", value: $tempoViagem, format:.number)
                Text("Seu humor")
                HStack(alignment:.top, spacing: 23) {
                    ForEach(0..<5) { _ in
                        Button(action: {}) {
                            Image(systemName: "star.fill")
                                .foregroundColor(.mediopadrao)
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
                                .foregroundColor(.mediopadrao)
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
    ContentView()
}


