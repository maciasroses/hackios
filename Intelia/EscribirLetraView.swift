//
//  EscribirLetraView.swift
//  hackios
//
//  Created by Adrian Faz on 17/04/23.
//

import SwiftUI


struct EscribeLetra: View {
    @State var texto: String = ""
    @State var correct: Int = 0
    @State var firstRight: Bool = false
    @State var secondRight: Bool = false
    @State var thirdRight: Bool = false
    @State var letter: String
    @State var image: String
    
    var body: some View {
        VStack{
        HStack{
            VStack (spacing: 0){
                Text(letter)
                    .font(.system(size: 120))
                    .bold()
                    .foregroundColor(.teal)
                
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100)
                    .overlay{
                        
                        TextField("", text: $texto)
                            .autocapitalization(.none)
                            .frame(width: 140, height: 400)
                            .onChange(of: texto) { _ in
                                if (texto == letter){
                                    correct+=1
                                    texto = ""
                                } else {
                                    texto = ""
                                }
                                
                                if correct == 1{
                                    firstRight = true
                                } else if correct == 2 {
                                    secondRight = true
                                } else if correct == 3 {
                                    thirdRight = true
                                }
                                
                            }
                        
                        
                        
                        
                    }
                
                HStack{
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundColor(firstRight ? .green : .gray)
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundColor(secondRight ? .green : .gray)
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundColor(thirdRight ? .green : .gray)
                }.padding(.top)
                    .font(.title2)
                
                
                
            }
            }
            
        }
    }
}



struct EscribirLetraView: View {

    var body: some View {
        NavigationStack{
            ZStack{
                AudioHelperView(instructions: "En esta pantalla podrás practicar tu caligrafía. Tienes diferentes letras, en mayúscula y en minúscula, teniendo 3 posibles aciertos para practicar lo mayor posible. Además, hasta abajo tienes un modo libre llamado Modo Zen.")
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
                    EscribeLetra(letter: "D", image: "LetraD")
                    
                    EscribeLetra(letter: "d", image: "LetraDmin")
                }
                
                HStack (spacing: 70){
                    EscribeLetra(letter: "E", image: "LetraE")
                    
                    EscribeLetra(letter: "e", image: "LetraEmin")
                }
            }
            
            NavigationLink {
                LetrasZenView()
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

struct EscribirLetraView_Previews: PreviewProvider {
    static var previews: some View {
        EscribirLetraView()
    }
}
