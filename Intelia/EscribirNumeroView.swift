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



struct EscribirNumeroView: View {

    var body: some View {
        NavigationStack{
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
