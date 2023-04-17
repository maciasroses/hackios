//
//  SilabasView.swift
//  hackios
//
//  Created by Adrian Faz on 15/04/23.
//

import SwiftUI

struct syllable: Identifiable, Hashable {
    var id = UUID()
    var syllable: String
    var word: String
    var emoji: String
}


struct syllablesLetter: Identifiable {
    var id = UUID()
    var syllables: [syllable]
    var letter: String
}

let letraM = syllablesLetter(syllables: [syllable(syllable: "ma", word: "mano", emoji: "✋"), syllable(syllable: "me", word: "melón", emoji: "🍈"), syllable(syllable: "mi", word: "miel", emoji: "🍯"), syllable(syllable: "mo", word: "mono", emoji: "🙉"),syllable(syllable: "mu", word: "música", emoji: "🎺")], letter: "m")


struct syllableView: View {
    @State var syllable: String
    @State var word: String
    @State var emoji: String
    @State var showEmoji: Bool = false
    
    var body: some View {
        VStack{
  
                Text(emoji)
                    .font(.system(size: showEmoji ? 70 : 60))
                    .offset(x:0,
                            y: showEmoji ? 0 : 0)
                    .rotationEffect(Angle(degrees: showEmoji ? 360 : 0))
            
                
                Text(syllable)
                    .font(.system(size: 65))
                    .bold()
                
            if showEmoji{
                Text(word)
                    .font(.title)
                    .italic()
                
            }

            
        }.frame(width: 205, height: 205)
            .background(.teal)
            .foregroundColor(.white)
            .cornerRadius(20)
            .shadow(radius: 10).onTapGesture {
                withAnimation (.easeInOut(duration: 0.5)){
                    showEmoji.toggle()
                }
                
              
                    speechToText(text: syllable)
                
        }
        
        
        
    }
}


struct SilabasView: View {
    @State var firstView: Bool = false
    @State var secondView: Bool = false
    var body: some View {
        NavigationStack{
            VStack{
                ZStack{
                    if firstView{
                        AudioHelperView(instructions: "En esta sección podrás aprender acerca de las sílabas con una letra que ya aprendiste. Pulsa en cada sílaba para escucharla y encontrar una palabra con ella.")
                            .offset(x: 0, y: -30)
                    }
                    HStack{
                        Text("Letra ")
                            .bold()
                            .font(.system(size: firstView ? 55 : 70))
                        
                        Text("M")
                            .bold()
                            .font(.system(size: firstView ? 70:85))
                            .padding(30)
                            .background(Circle().fill(.teal).opacity(0.3))
                    }.padding(30)
                }
            }.onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2
                ) {
                    withAnimation (.easeOut(duration: 1)){
                        firstView = true
                    }
                    
                }
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 3.1
                ) {
                    withAnimation (.easeOut(duration: 1)){
                        secondView = true
                    }
                    
                }
                
            }
            
            HStack{
                
            }
            
            if firstView && !secondView{
                Spacer()
            }
            
            
            
            if secondView{
                VStack (spacing: 15){
                    HStack (spacing: 45){
                        ForEach(0..<3, id: \.self) { number in
                            syllableView(syllable: letraM.syllables[number].syllable, word: letraM.syllables[number].word, emoji: letraM.syllables[number].emoji)
                        }
                    }.padding()
                    
                    HStack (spacing: 45){
                        ForEach(3..<5, id: \.self) { number in
                            syllableView(syllable: letraM.syllables[number].syllable, word: letraM.syllables[number].word, emoji: letraM.syllables[number].emoji)
                        }
                    }.padding()
                }
                
                Spacer()
                
                HStack{
                    Spacer()
                    NavigationLink{
                        EjercicioSilabasView()
                    } label: {
                        Image(systemName: "arrow.right.circle.fill")
                            .foregroundColor(.blue)
                            .font(.system(size: 65))
                            .padding(.horizontal, 30)
                    }
                    
                }
                
            }
        }
    }
}

struct SilabasView_Previews: PreviewProvider {
    static var previews: some View {
        SilabasView()
    }
}
