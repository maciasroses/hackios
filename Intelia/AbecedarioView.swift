//
//  AbecedarioView.swift
//  hackios
//
//  Created by Adrian Faz on 15/04/23.
//

import SwiftUI
import AVFoundation
let synthesizer = AVSpeechSynthesizer()

struct datosLetra: Identifiable, Hashable {
    var id = UUID()
    var letter: String
    var word: String
    var emoji: String
    var pronunciacion: String
    
}




let abecedario = [
    datosLetra(letter: "A", word: "Abeja", emoji: "🐝", pronunciacion: "a"),
    datosLetra(letter: "F", word: "Foca", emoji: "🦭", pronunciacion: "efe"),
    datosLetra(letter: "K", word: "Koala", emoji: "🐨", pronunciacion: "ka"),
    datosLetra(letter: "O", word: "Oso", emoji: "🐻", pronunciacion: "o"),
    datosLetra(letter: "T", word: "Tomate", emoji: "🍅", pronunciacion: "te"),
    datosLetra(letter: "Y", word: "Yoyo", emoji: "🪀", pronunciacion: "i griega")
]
let abecedario2 = [
    datosLetra(letter: "B", word: "Barco", emoji: "⛵️", pronunciacion: "be"),
    datosLetra(letter: "G", word: "Gato", emoji: "🐱", pronunciacion: "ge"),
    datosLetra(letter: "L", word: "León", emoji: "🦁", pronunciacion: "ele"),
    datosLetra(letter: "P", word: "Pastel", emoji: "🎂", pronunciacion: "pe"),
    datosLetra(letter: "U", word: "Uva", emoji: "🍇", pronunciacion: "u"),
    datosLetra(letter: "Z", word: "Zorro", emoji: "🦊", pronunciacion: "zeta")
]

let abecedario3 = [
    datosLetra(letter: "C", word: "Casa", emoji: "🏠", pronunciacion: "ce"),
    datosLetra(letter: "H", word: "Helado", emoji: "🍦", pronunciacion: "ache"),
    datosLetra(letter: "M", word: "Mariposa", emoji: "🦋", pronunciacion: "eme"),
    datosLetra(letter: "Q", word: "Queso", emoji: "🧀", pronunciacion: "cu"),
    datosLetra(letter: "V", word: "Vaca", emoji: "🐮", pronunciacion: "u ve")
]

let abecedario4 = [
    datosLetra(letter: "D", word: "Dado", emoji: "🎲", pronunciacion: "de"),
    datosLetra(letter: "I", word: "Isla", emoji: "🏝️", pronunciacion: "i"),
    datosLetra(letter: "N", word: "Nube", emoji: "☁️", pronunciacion: "ene"),
    datosLetra(letter: "R", word: "Ratón", emoji: "🐭", pronunciacion: "erre"),
    datosLetra(letter: "W", word: "Waterpolo", emoji: "🤽🏻‍♂️", pronunciacion: "doble u")
]

let abecedario5 = [
    datosLetra(letter: "E", word: "Elefante", emoji: "🐘", pronunciacion: "e"),
    datosLetra(letter: "J", word: "Jirafa", emoji: "🦒", pronunciacion: "jota"),
    datosLetra(letter: "Ñ", word: "Ñú", emoji: "🦬", pronunciacion: "eñe"),
    datosLetra(letter: "S", word: "Sol", emoji: "☀️", pronunciacion: "ese"),
    datosLetra(letter: "X", word: "Xilófono", emoji: "🌈", pronunciacion: "equis")
]


/*
struct LetraView: View {
    @State var id = UUID()
    @State var letter: String = "A"
    @State var emoji: String = "🐝"
    @State var word: String = "Abeja"
    
    var body: some View {
        
        
        VStack{
            Text(emoji)
                .font(.largeTitle)
            Text(letter)
                .font(.largeTitle)
                .foregroundColor(.white)
                .bold()
        }.padding(.vertical, 15)
            .padding(.horizontal, 25)
            .background(RoundedRectangle(cornerRadius: 6)
                .fill(.indigo))
            .shadow(radius: 8
            )
            
    }
    
}
 */

struct LetraView: View {
    @State var id = UUID()
    @State var letter: String = "A"
    @State var emoji: String = "🐝"
    @State var word: String = "Abeja"
    @State var isOpen: Bool = false
    @State var pronunciacion: String
    
    var body: some View {
        
        VStack{
            HStack{
                
                Text(letter)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .bold()
                    .padding(.bottom,isOpen ? 8: 0)
                
                
                Text(emoji)
                    .font(.system(size: 50))
                    .padding(.leading, 5)
                    .padding(.top, isOpen ? 10: 0)
                    .scaleEffect(isOpen ? 1.5 : 1.0)
                    .offset(x: isOpen ? -15: 0, y: isOpen ? 50: 0)
    
            
            }
            
            if isOpen{
                
                Text(word)
                    .font(.title2)
                    .foregroundColor(.white)
                    .padding(.top, 40)
                    .fontWeight(.semibold
                    )
            }
            
            
        }.padding(.vertical, 15)
            .padding(.horizontal, 25)
            .frame(width: 175)
            .background(isOpen ? .blue : .teal)
            .cornerRadius(10)
            .shadow(radius: 8)
            .onTapGesture{
                
                if !isOpen {
                    
                    speechToText(text: pronunciacion)
      
                }
                
                withAnimation {
                    isOpen.toggle()
                }
            }
    }
    
}


struct AbecedarioView: View {
    var body: some View {
        
        VStack{
            
            ZStack{
                AudioHelperView(instructions: "En esta pantalla aprenderás acerca del abecedario. Puedes presionar sobre las diferentes letras para escuchar su pronunciación y ver una palabra con esa letra.")
                
                VStack{
                    Text("Abecedario")
                        .bold()
                        .font(.largeTitle)
                        .padding(.top, 30)
                        .padding(.bottom, 1)
                    
                    
                    Text("Presiona sobre cada letra para escuchar la pronunciación.")
                        .font(.title2)
                        .foregroundColor(.gray)
                        .padding(.bottom, 10)
                        .italic()
                }
            }
            ScrollView {
            HStack (alignment: .top,
                    spacing: 40){
                VStack (spacing: 20){
                    ForEach(abecedario, id: \.self){ datosletra in
                        
                        LetraView(letter: datosletra.letter, emoji: datosletra.emoji, word: datosletra.word, pronunciacion: datosletra.pronunciacion)
                        
                    }
                }
                    VStack (spacing: 20){
                        ForEach(abecedario2, id: \.self){ datosletra in
                            
                            LetraView(letter: datosletra.letter, emoji: datosletra.emoji, word: datosletra.word, pronunciacion: datosletra.pronunciacion)
                            
                        }
                }
                
                VStack (spacing: 20){
                    ForEach(abecedario3, id: \.self){ datosletra in
                        
                        LetraView(letter: datosletra.letter, emoji: datosletra.emoji, word: datosletra.word, pronunciacion: datosletra.pronunciacion)
                        
                    }
            }
                
                VStack (spacing: 20){
                    ForEach(abecedario4, id: \.self){ datosletra in
                        
                        LetraView(letter: datosletra.letter, emoji: datosletra.emoji, word: datosletra.word, pronunciacion: datosletra.pronunciacion)
                        
                    }
            }
                
                
                VStack (spacing: 20){
                    ForEach(abecedario5, id: \.self){ datosletra in
                        
                        LetraView(letter: datosletra.letter, emoji: datosletra.emoji, word: datosletra.word,pronunciacion: datosletra.pronunciacion)
                        
                    }
            }
                
   
            }
            }
        }
        
        

    }
}

struct AbecedarioView_Previews: PreviewProvider {
    static var previews: some View {
        AbecedarioView()
    }
}
