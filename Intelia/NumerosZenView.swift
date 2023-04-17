//
//  LetrasZenView.swift
//  hackios
//
//  Created by Adrian Faz on 17/04/23.
//

import SwiftUI


struct EscribeZen: View {
    @State var texto: String = ""
    @State var correct: Int = 0
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
                                    
                                    
                                }
                            
                            
                            
                            
                        }
                    
                    
                    
                    
                    
                }
            }
            
            Text(String(correct))
                .bold()
            .font(.largeTitle)
            .padding()
            .background(Circle().fill(.teal.opacity(0.2)))
            .padding(.top, 30)

            
            
        }
        
        
        
    }
}




struct NumerosZenView: View {
    var body: some View {
        VStack{
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

