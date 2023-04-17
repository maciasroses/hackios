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
    var body: some View {
        VStack{
            VStack(alignment: .leading){
                ForEach(0..<5, id:  \.self) { number in
                    HStack{
                        Button(action: {
                            print("Holi")
                        }, label: {
                            Image(systemName: "speaker.wave.2.circle.fill")
                                .font(.system(size: 50,weight: .regular, design: .default))
                                .foregroundColor(.blue)
                        }
                        )
                        Text(silab[number])
                            .font(.system(size: 50))
                    }
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
