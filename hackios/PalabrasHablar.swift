//
//  PalabrasHablar.swift
//  hackios
//
//  Created by Macías Romero on 15/04/23.
//

import SwiftUI

struct PalabrasHablar: View {
    var body: some View {
        VStack{
            Text("🐝")
                .font(.system(size: 100))
            HStack{
                Text("A - be - ja")
                    .font(.system(size: 60))
                Button(action: {
                    print("Holi")
                }, label: {
                    Image(systemName: "speaker.wave.2.circle.fill")
                        .font(.system(size: 30,weight: .regular, design: .default))
                        .foregroundColor(.blue)
                }
                )
                .padding(.top)
            }
            Text("Abeja")
                .font(.system(size: 40))
            Button(action: {
                print("Holi")
            }, label: {
                Image(systemName: "mic.circle.fill")
                    .font(.system(size: 120))
                    .foregroundColor(.blue)
                    .padding(40)
            }
            )
        }
    }
}

struct PalabrasHablar_Previews: PreviewProvider {
    static var previews: some View {
        PalabrasHablar()
    }
}
