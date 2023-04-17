//
//  LetrasZenView.swift
//  hackios
//
//  Created by Adrian Faz on 17/04/23.
//

import SwiftUI

struct NumerosZenView: View {
    var body: some View {
        VStack{
            ZStack{
                AudioHelperView(instructions: "Aquí puedes practicar tanto como tú quieras, recopilando las veces que lo hiciste bien.")
                VStack{
                    Text("Modo Zen")
                        .bold()
                        .font(.largeTitle)
                        .padding(.top, 30)
                        .padding(.bottom, 1)
                    
                    
                    Text("Practica tus trazos y supera tu récord!")
                        .font(.title2)
                        .foregroundColor(.gray)
                        .padding(.bottom, 4)
                        .italic()
                }
            }
            HStack (spacing: 150){
                HStack (spacing: 70){
                    EscribeZen(letter: "1", image: "Numero1")
                }
                
                HStack (spacing: 70){
                    EscribeZen(letter: "2", image: "Numero2")
                }
            }
        

            
            Spacer()
        }
    }
    
}


struct NumerosZenView_Previews: PreviewProvider {
    static var previews: some View {
        NumerosZenView()
    }
}

