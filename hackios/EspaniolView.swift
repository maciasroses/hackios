//
//  EspaniolView.swift
//  hackios
//
//  Created by Macías Romero on 15/04/23.
//

import SwiftUI

struct EspaniolView: View {
    let topicosHabla = [
        "Abecedario",
        "Silabas",
        "Palabras"
    ]
    let topicosEscrit = [
        "Abecedario",
        "Números",
        "Palabras"
    ]
    let asdas = [
        PalabrasHablar(),
        SilabasHablar(),
    ] as [Any]
    var body: some View {
        VStack{
            HStack {
                Spacer()
                VStack(){
                    Text("Hablar 🎤")
                        .font(.system(size: 40))
                    VStack(alignment: .leading){
                        ForEach(0..<3, id:  \.self) { number in
                            HStack{
                                Button(action: {
                                    print("Holi")
                                }, label: {
                                    Image(systemName: "waveform.circle.fill")
                                        .font(.system(size: 30,weight: .regular, design: .default))
                                        .foregroundColor(.orange)
                                }
                                )
                                Button(action: {
                                    print("Holi2")
                                }, label: {
                                    Text(topicosHabla[number])
                                        .foregroundColor(.black).fontWeight(.semibold)
                                        .font(.system(size: 30))
                                }
                                )
                            }.padding(.vertical,7)
                        }
                    }
                }
                Spacer()
                VStack{
                    Text("Escribir ✏️")
                        .font(.system(size: 40))
                    VStack(alignment: .leading){
                        ForEach(0..<3, id:  \.self) { number in
                            HStack{
                                Button(action: {
                                    print("Holi")
                                }, label: {
                                    Image(systemName: "waveform.circle.fill")
                                        .font(.system(size: 25,weight: .regular, design: .default))
                                        .foregroundColor(.orange)
                                }
                                )
                                Button(action: {
                                    print("Holi2")
                                }, label: {
                                    Text(topicosEscrit[number])
                                        .foregroundColor(.black).fontWeight(.semibold)
                                        .font(.system(size: 30))
                                }
                                )
                            }.padding(.vertical,7)
                        }
                    }
                }
                Spacer()
            }
        }
    }
}

struct EspaniolView_Previews: PreviewProvider {
    static var previews: some View {
        EspaniolView()
    }
}
