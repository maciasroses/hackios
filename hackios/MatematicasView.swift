//
//  MatematicasView.swift
//  hackios
//
//  Created by Macías Romero on 15/04/23.
//

import SwiftUI

struct MatematicasView: View {
    var body: some View {
        NavigationStack{
            VStack{
                HStack {
                    Spacer()
                    VStack(){
                        Text("Realidad Aumentada 👓")
                            .font(.system(size: 40))
                        VStack(alignment: .leading){
                            HStack{
                                Button(action: {
                                    print("Holi")
                                }, label: {
                                    Image(systemName: "waveform.circle.fill")
                                        .font(.system(size: 30,weight: .regular, design: .default))
                                        .foregroundColor(.orange)
                                }
                                )
                                NavigationLink {
                                        //
                                } label: {
                                    Text("Números")
                                        .foregroundColor(.black).fontWeight(.semibold)
                                        .font(.system(size: 30))
                                }
                            }.padding(.vertical,7)
                            HStack{
                                Button(action: {
                                    print("Holi")
                                }, label: {
                                    Image(systemName: "waveform.circle.fill")
                                        .font(.system(size: 30,weight: .regular, design: .default))
                                        .foregroundColor(.orange)
                                }
                                )
                                NavigationLink {
                                    //
                                } label: {
                                    Text("Figuras Geométricas")
                                        .foregroundColor(.black).fontWeight(.semibold)
                                        .font(.system(size: 30))
                                }
                            }.padding(.vertical,7)
                            HStack{
                                Button(action: {
                                    print("Holi")
                                }, label: {
                                    Image(systemName: "waveform.circle.fill")
                                        .font(.system(size: 30,weight: .regular, design: .default))
                                        .foregroundColor(.orange)
                                }
                                )
                                NavigationLink {
                                    //
                                } label: {
                                    Text("Prismas")
                                        .foregroundColor(.black).fontWeight(.semibold)
                                        .font(.system(size: 30))
                                }
                            }.padding(.vertical,7)
                            HStack{
                                Button(action: {
                                    print("Holi")
                                }, label: {
                                    Image(systemName: "waveform.circle.fill")
                                        .font(.system(size: 30,weight: .regular, design: .default))
                                        .foregroundColor(.orange)
                                }
                                )
                                NavigationLink {
                                    //
                                } label: {
                                    Text("Operaciones")
                                        .foregroundColor(.black).fontWeight(.semibold)
                                        .font(.system(size: 30))
                                }
                            }.padding(.vertical,7)
                            HStack{
                                Button(action: {
                                    print("Holi")
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
                                    print("Holi")
                                }, label: {
                                    Image(systemName: "waveform.circle.fill")
                                        .font(.system(size: 30,weight: .regular, design: .default))
                                        .foregroundColor(.orange)
                                }
                                )
                                NavigationLink {
                                    //sdssss
                                } label: {
                                    Text("Suma")
                                        .foregroundColor(.black).fontWeight(.semibold)
                                        .font(.system(size: 30))
                                }
                            }.padding(.vertical,7)
                            HStack{
                                Button(action: {
                                    print("Holi")
                                }, label: {
                                    Image(systemName: "waveform.circle.fill")
                                        .font(.system(size: 30,weight: .regular, design: .default))
                                        .foregroundColor(.orange)
                                }
                                )
                                NavigationLink {
                                    //asdasd
                                } label: {
                                    Text("Resta")
                                        .foregroundColor(.black).fontWeight(.semibold)
                                        .font(.system(size: 30))
                                }
                            }.padding(.vertical,7)
                            HStack{
                                Button(action: {
                                    print("Holi")
                                }, label: {
                                    Image(systemName: "waveform.circle.fill")
                                        .font(.system(size: 30,weight: .regular, design: .default))
                                        .foregroundColor(.orange)
                                }
                                )
                                NavigationLink {
                                    //asdasdasd
                                } label: {
                                    Text("Multiplicación")
                                        .foregroundColor(.black).fontWeight(.semibold)
                                        .font(.system(size: 30))
                                }
                            }.padding(.vertical,7)
                            HStack{
                                Button(action: {
                                    print("Holi")
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
                                    print("Holi")
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
        }
    }
}

struct MatematicasView_Previews: PreviewProvider {
    static var previews: some View {
        MatematicasView()
    }
}
