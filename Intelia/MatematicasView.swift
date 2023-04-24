//
//  MatematicasView.swift
//  Intelia
//
//  Created by Macías Romero on 15/04/23.
//

import SwiftUI

struct MatematicasView: View {
    var body: some View {
        NavigationStack{
            AudioHelperView(instructions: "En esta pantalla aparecen ejercicios de práctica divididos en dos columnas. La primera, con un dibujo de unos lentes, son experiencias en realidad aumentada, mientras que la segunda, con un dibujo de un cerébro, son para practicar las operaciones básicas.")
            VStack{
                Text("Área de Matemáticas")
                    .bold()
                    .font(.largeTitle)
                    .padding(.top, 30)
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
                        Text("Realidad Aumentada 👓")
                            .font(.system(size: 40))
                        VStack(alignment: .leading){
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
                                    NumerosView().onAppear{speechToText(text: "En esta experiencia podrás ver diferentes cantidades de galletas de acuerdo al número que está sobre las charolas.")}
                                } label: {
                                    Text("Números")
                                        .foregroundColor(.black).fontWeight(.semibold)
                                        .font(.system(size: 30))
                                }
                            }.padding(.vertical,7)
                            HStack{
                                Button(action: {
                                    speechToText(text: "Figuras geométricas")
                                }, label: {
                                    Image(systemName: "waveform.circle.fill")
                                        .font(.system(size: 30,weight: .regular, design: .default))
                                        .foregroundColor(.orange)
                                }
                                )
                                NavigationLink {
                                    FigurasGeometricasView().onAppear{speechToText(text: "En esta experiencia podrás ver diferentes figuras geométricas con su nombre.")}
                                } label: {
                                    Text("Figuras Geométricas")
                                        .foregroundColor(.black).fontWeight(.semibold)
                                        .font(.system(size: 30))
                                }
                            }.padding(.vertical,7)
                            HStack{
                                Button(action: {
                                    speechToText(text: "Prismas")
                                }, label: {
                                    Image(systemName: "waveform.circle.fill")
                                        .font(.system(size: 30,weight: .regular, design: .default))
                                        .foregroundColor(.orange)
                                }
                                )
                                NavigationLink {
                                    PrismasView().onAppear{speechToText(text: "En esta experiencia podrás ver diferentes figuras geométricas en tercera dimensión con su nombre.")}
                                } label: {
                                    Text("Prismas")
                                        .foregroundColor(.black).fontWeight(.semibold)
                                        .font(.system(size: 30))
                                }
                            }.padding(.vertical,7)
                            HStack{
                                Button(action: {
                                    speechToText(text: "Operaciones")
                                }, label: {
                                    Image(systemName: "waveform.circle.fill")
                                        .font(.system(size: 30,weight: .regular, design: .default))
                                        .foregroundColor(.orange)
                                }
                                )
                                NavigationLink {
                                    OperacionesView().onAppear{speechToText(text: "En esta experiencia podrás aprender de forma gráfica las operaciones básicas de la aritmética. La Suma, la resta, la multiplicación y la división")}
                                } label: {
                                    Text("Operaciones")
                                        .foregroundColor(.black).fontWeight(.semibold)
                                        .font(.system(size: 30))
                                }
                            }.padding(.vertical,7)
                            HStack{
                                Button(action: {
                                    speechToText(text: "Fracciones")
                                }, label: {
                                    Image(systemName: "waveform.circle.fill")
                                        .font(.system(size: 30,weight: .regular, design: .default))
                                        .foregroundColor(.orange)
                                }
                                )
                                NavigationLink {
                                    //
                                } label: {
                                    Text("Fracciones")
                                        .foregroundColor(.black).fontWeight(.semibold)
                                        .font(.system(size: 30))
                                }
                            }.padding(.vertical,7)
                        }
                    }
                    Spacer()
                    VStack{
                        Text("Practica 🧠")
                            .font(.system(size: 40))
                        VStack(alignment: .leading){
                            HStack{
                                Button(action: {
                                    speechToText(text: "Suma")
                                }, label: {
                                    Image(systemName: "waveform.circle.fill")
                                        .font(.system(size: 30,weight: .regular, design: .default))
                                        .foregroundColor(.orange)
                                }
                                )
                                NavigationLink {
                                    AprendeSumarView()
                                } label: {
                                    Text("Suma")
                                        .foregroundColor(.black).fontWeight(.semibold)
                                        .font(.system(size: 30))
                                }
                            }.padding(.vertical,7)
                            HStack{
                                Button(action: {
                                    speechToText(text: "Resta")
                                }, label: {
                                    Image(systemName: "waveform.circle.fill")
                                        .font(.system(size: 30,weight: .regular, design: .default))
                                        .foregroundColor(.orange)
                                }
                                )
                                NavigationLink {
                                    AprendeRestarView()
                                } label: {
                                    Text("Resta")
                                        .foregroundColor(.black).fontWeight(.semibold)
                                        .font(.system(size: 30))
                                }
                            }.padding(.vertical,7)
                            HStack{
                                Button(action: {
                                    speechToText(text: "Multiplicación")
                                }, label: {
                                    Image(systemName: "waveform.circle.fill")
                                        .font(.system(size: 30,weight: .regular, design: .default))
                                        .foregroundColor(.orange)
                                }
                                )
                                NavigationLink {
                                    AprendeMultView()
                                } label: {
                                    Text("Multiplicación")
                                        .foregroundColor(.black).fontWeight(.semibold)
                                        .font(.system(size: 30))
                                }
                            }.padding(.vertical,7)
                            HStack{
                                Button(action: {
                                    speechToText(text: "División")
                                }, label: {
                                    Image(systemName: "waveform.circle.fill")
                                        .font(.system(size: 30,weight: .regular, design: .default))
                                        .foregroundColor(.orange)
                                }
                                )
                                NavigationLink {
                                    //asdasdasd
                                } label: {
                                    Text("División")
                                        .foregroundColor(.black).fontWeight(.semibold)
                                        .font(.system(size: 30))
                                }
                            }.padding(.vertical,7)
                            HStack{
                                Button(action: {
                                    speechToText(text: "Fracción")
                                }, label: {
                                    Image(systemName: "waveform.circle.fill")
                                        .font(.system(size: 30,weight: .regular, design: .default))
                                        .foregroundColor(.orange)
                                }
                                )
                                NavigationLink {
                                    //asdasdasd
                                } label: {
                                    Text("Fracción")
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

struct MatematicasView_Previews: PreviewProvider {
    static var previews: some View {
        MatematicasView()
    }
}
