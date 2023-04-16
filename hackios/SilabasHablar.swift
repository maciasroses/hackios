//
//  SilabasHablar.swift
//  hackios
//
//  Created by Macías Romero on 15/04/23.
//

import SwiftUI

struct SilabasHablar: View {
    let silab = [
        "m + a = ma",
        "m + e = me",
        "m + i = mi",
        "m + o = mo",
        "m + u = mu"
    ]
    let silabejemfoto = [
        "✋",
        "🍈",
        "🍯",
        "🍇",
        "🎼"
    ]
    
    let silabejemtext = [
        "mano",
        "melón",
        "miel",
        "mora",
        "músico"
    ]
    var body: some View {
        VStack{
            VStack(alignment: .leading){
                ForEach(0..<5, id:  \.self) { number in
                    HStack{
                        Button(action: {
                            print("Holi")
                        }, label: {
                            Image(systemName: "speaker.wave.2.circle.fill")
                                .font(.system(size: 30,weight: .regular, design: .default))
                                .foregroundColor(.blue)
                        }
                        )
                        Text(silab[number])
                            .font(.system(size: 50))
                    }
                }
            }
            HStack{
                ForEach(0..<3, id:  \.self) { number in
                    VStack{
                        Button(action: {
                            print("Holi")
                        }, label: {
                            Text(silabejemfoto[number])
                        }
                        ).font(.system(size: 70))
                        Text(silabejemtext[number])
                    }.font(.system(size: 40))
                        .padding(30)
                }
            }
            HStack{
                ForEach(3..<5, id:  \.self) { number in
                    VStack{
                        Button(action: {
                            print("Holi")
                        }, label: {
                            Text(silabejemfoto[number])
                        }
                        ).font(.system(size: 70))
                        Text(silabejemtext[number])
                    }.font(.system(size: 40))
                        .padding(30)
                }
            }

        }
    }
}

struct SilabasHablar_Previews: PreviewProvider {
    static var previews: some View {
        SilabasHablar()
    }
}
