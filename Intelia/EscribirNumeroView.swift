//
//  EscribirLetraView.swift
//  hackios
//
//  Created by Adrian Faz on 17/04/23.
//

import SwiftUI

struct EscribirNumeroView: View {

    var body: some View {
        NavigationStack{
            ZStack{
                AudioHelperView(instructions: "En esta pantalla podrás practicar cómo escribir los números, teniendo 3 posibles aciertos para practicar lo mayor posible. Además, hasta abajo tienes un modo libre llamado Modo Zen.")
                VStack{
                    Text("Práctica de escritura")
                        .bold()
                        .font(.largeTitle)
                        .padding(.top, 30)
                        .padding(.bottom, 1)
                    
                    
                    Text("Traza las letras que te aparecen en pantalla 3 veces.")
                        .font(.title2)
                        .foregroundColor(.gray)
                        .padding(.bottom, 4)
                        .italic()
                }
            }
            HStack (spacing: 150){
                HStack (spacing: 70){
                    EscribeLetra(letter: "1", image: "Numero1")
                }
                
                HStack (spacing: 70){
                    EscribeLetra(letter: "2", image: "Numero2")
                }
            }
            
            NavigationLink {
                NumerosZenView()
            } label: {
                Text("Modo Zen")
                    .bold()
                    .font(.title)
                    .padding()
                    .foregroundColor(.white)
                    .background(.teal)
                    .cornerRadius(20)
                    .shadow(radius: 10)
                    .padding(.top, 80)
                
            }
            
            
            Spacer()
        }
    }
}

struct EscribirNumeroView_Previews: PreviewProvider {
    static var previews: some View {
        EscribirNumeroView()
    }
}
