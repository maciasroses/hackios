//
//  EspaniolView.swift
//  Intelia
//
//  Created by Macías Romero on 15/04/23.
//

import SwiftUI

struct EspaniolView: View {
    var body: some View {
        NavigationStack{
                AudioHelperView(instructions: "En esta pantalla aparecen ejercicios de práctica divididos en dos columnas. La primera, con un dibujo de un micrófono, son ejercicios para practicar la pronunciación, mientras que la segunda, con un dibujo de un lápiz, son para practicar caligrafía.")
                VStack{
                    Text("Área de Español")
                        .bold()
                        .font(.largeTitle)
                        .padding(.top, 120)
                        .padding(.bottom, 1)
                    
                    
                    Text("Presiona sobre cada tópico para entrar a los ejercicios.")
                        .font(.title2)
                        .foregroundColor(.gray)
                        .padding(.bottom, 10)
                        .italic()
                }
            VStack{
                HStack {
                    Spacer()
                    VStack(){
                        Text("Hablar 🎤")
                            .font(.system(size: 40))
                        VStack(alignment: .leading){
                            HStack{
                                Button(action: {
                                    speechToText(text: "Abecedario")
                                }, label: {
                                    Image(systemName: "waveform.circle.fill")
                                        .font(.system(size: 30,weight: .regular, design: .default))
                                        .foregroundColor(.orange)
                                }
                                )
                                NavigationLink {
                                        AbecedarioView()
                                } label: {
                                    Text("Abecedario")
                                        .foregroundColor(.black).fontWeight(.semibold)
                                        .font(.system(size: 30))
                                }
                            }.padding(.vertical,7)
                            HStack{
                                Button(action: {
                                    speechToText(text: "Sílabas")
                                }, label: {
                                    Image(systemName: "waveform.circle.fill")
                                        .font(.system(size: 30,weight: .regular, design: .default))
                                        .foregroundColor(.orange)
                                }
                                )
                                NavigationLink {
                                    SilabasView()
                                } label: {
                                    Text("Sílabas")
                                        .foregroundColor(.black).fontWeight(.semibold)
                                        .font(.system(size: 30))
                                }
                            }.padding(.vertical,7)
                            HStack{
                                Button(action: {
                                    speechToText(text: "Palabras")
                                }, label: {
                                    Image(systemName: "waveform.circle.fill")
                                        .font(.system(size: 30,weight: .regular, design: .default))
                                        .foregroundColor(.orange)
                                }
                                )
                                NavigationLink {
                                    PalabrasHablarView()
                                } label: {
                                    Text("Palabras")
                                        .foregroundColor(.black).fontWeight(.semibold)
                                        .font(.system(size: 30))
                                }
                            }.padding(.vertical,7)
                        }
                    }
                    Spacer()
                    VStack{
                        Text("Escribir ✏️")
                            .font(.system(size: 40))
                        VStack(alignment: .leading){
                            HStack{
                                Button(action: {
                                    speechToText(text: "Abecedario")
                                }, label: {
                                    Image(systemName: "waveform.circle.fill")
                                        .font(.system(size: 30,weight: .regular, design: .default))
                                        .foregroundColor(.orange)
                                }
                                )
                                NavigationLink {
                                    EscribirLetraView()
                                } label: {
                                    Text("Abecedario")
                                        .foregroundColor(.black).fontWeight(.semibold)
                                        .font(.system(size: 30))
                                }
                            }.padding(.vertical,7)
                            HStack{
                                Button(action: {
                                    speechToText(text: "Números")
                                }, label: {
                                    Image(systemName: "waveform.circle.fill")
                                        .font(.system(size: 30,weight: .regular, design: .default))
                                        .foregroundColor(.orange)
                                }
                                )
                                NavigationLink {
                                    EscribirNumeroView()
                                } label: {
                                    Text("Números")
                                        .foregroundColor(.black).fontWeight(.semibold)
                                        .font(.system(size: 30))
                                }
                            }.padding(.vertical,7)
                            HStack{
                                Button(action: {
                                    speechToText(text: "Palabras")
                                }, label: {
                                    Image(systemName: "waveform.circle.fill")
                                        .font(.system(size: 30,weight: .regular, design: .default))
                                        .foregroundColor(.orange)
                                }
                                )
                                NavigationLink {
                                    //asdasdasd
                                } label: {
                                    Text("Palabras")
                                        .foregroundColor(.black).fontWeight(.semibold)
                                        .font(.system(size: 30))
                                }
                            }.padding(.vertical,7)

                        }
                    }
                    Spacer()
                }
            }
            Spacer()
        }
    }
}

struct EspaniolView_Previews: PreviewProvider {
    static var previews: some View {
        EspaniolView()
    }
}

