//
//  EjercicioSilabasView.swift
//  Intelia
//
//  Created by Adrian Faz on 16/04/23.
//

import SwiftUI

struct SyllableExercise: View {
    var syllable: String = "hello"
    var body: some View {
        
        VStack{
            Text(syllable)
                .font(.largeTitle)
                .frame(minWidth: 100, minHeight: 60)
                .background(.teal)
                .cornerRadius(10)
                .foregroundColor(.white)
                .bold()
        }.shadow(radius: 10)
        
        
    }
}

struct infoExercise{
    var terminacion: String
    var emoji: String
}


let mySyllables = ["ma", "me", "mi", "mo", "mu"]
let rightOrder1 = ["me", "mi", "ma"]
let rightOrder2 = ["mu","mo","ma"]

let info1 = [infoExercise(terminacion: "lón", emoji: "🍈"), infoExercise(terminacion: "el", emoji: "🍯"), infoExercise(terminacion: "no", emoji: "✋")]

let info2 = [infoExercise(terminacion: "sica", emoji: "🎶"), infoExercise(terminacion: "ra", emoji: "🫐"), infoExercise(terminacion: "dre", emoji: "👩🏻")]


struct EjercicioSilabasView: View {
    @State var droppedWords1: [(word: String?, isCorrect: Bool)] = Array(repeating: ("", false), count: 3)
    @State var droppedWords2: [(word: String?, isCorrect: Bool)] = Array(repeating: ("", false), count: 3)
    
    @State var draggedWord: String? = nil
    @State var showResults = false

    var body: some View {
        
        VStack {
            
            ZStack{
                AudioHelperView(instructions: "En esta pantalla practicarás las sílabas. Arriba puedes ver las sílabas disponibles. Puedes arrastrar estas sílabas a los espacios correspondientes según cada imagen. Presiona el botón de revisar tus respuestas después de completar todos.")
                
                VStack{
                    Text("Práctica de Sílabas")
                        .bold()
                        .font(.largeTitle)
                        .padding(.top, 15)
                        .padding(.bottom, 1)
                    
                    
                    Text("Arrastra la sílaba correcta para formar las palabras en pantalla.")
                        .font(.title)
                        .foregroundColor(.gray)
                        .padding(.bottom, 10)
                        .italic()
                }
            }
            
            HStack (spacing: 40){
                ForEach(mySyllables, id: \.self) { word in
                    SyllableExercise(syllable: word)
                        .onDrag({
                            // When the word is dragged, create a NSItemProvider with the word as plain text
                            let itemProvider = NSItemProvider(object: word as NSString)
                            itemProvider.suggestedName = word
                            return itemProvider
                        })
                }
            }.padding(.vertical, 50)
            
            HStack(spacing: 80) {
                        ForEach(droppedWords1.indices, id: \.self) { index in
                            let (word, isCorrect) = droppedWords1[index]
                            
                            let color = showResults ? (isCorrect ? Color.green.opacity(0.8) : (word != nil ? Color.red.opacity(0.8) : Color.gray.opacity(0.2))) : Color.gray.opacity(0.2)
                            
                            VStack (spacing: 10){
                                
                                Text(info1[index].emoji)
                                    .font(.system(size: 50))
                                HStack{
                                    Text(word ?? "")
                                        .frame(minWidth: 75, minHeight: 40)
                                        .padding(9)
                                        .background(color)
                                        .foregroundColor(.black)
                                        .font(.largeTitle)
                                        .bold()
                                        .cornerRadius(10)
                                        .animation(.easeInOut(duration: 0.2), value: word)
                                        .onDrop(of: [.text], isTargeted: nil) { providers in
                                            let itemProvider = providers.first(where: { $0.hasItemConformingToTypeIdentifier("public.plain-text") })
                                            itemProvider?.loadObject(ofClass: NSString.self) { string, _ in
                                                if let word = string as? String {
                                                    // If the dropped item is a word, update the corresponding drop space and check if it's correct
                                                    if let draggedIndex = droppedWords1.firstIndex(where: { $0.word == self.draggedWord }) {
                                                        droppedWords1[draggedIndex].word = nil
                                                        droppedWords1[draggedIndex].isCorrect = false
                                                    }
                                                    draggedWord = nil
                                                    droppedWords1[index].word = word
                                                    droppedWords1[index].isCorrect = (word == rightOrder1[index])
                                                }
                                            }
                                            return true
                                        }
                                        .onDrag({
                                            draggedWord = word
                                            let itemProvider = NSItemProvider(object: word as! NSString)
                                            itemProvider.suggestedName = word
                                            return itemProvider
                                        })
                                        .fixedSize(horizontal: false, vertical: true) // Add this line to make the frame flexible
                                    
                                    Text(info1[index].terminacion)
                                        .foregroundColor(.black)
                                        .font(.largeTitle)
                                        .bold()
                                    
                                }
                                
                            }
                        }

            }.padding(.bottom)
            
            HStack(spacing: 80) {
                        ForEach(droppedWords2.indices, id: \.self) { index in
                            let (word, isCorrect) = droppedWords2[index]
                            
                            let color = showResults ? (isCorrect ? Color.green.opacity(0.8) : (word != nil ? Color.red.opacity(0.8) : Color.gray.opacity(0.2))) : Color.gray.opacity(0.2)
                            
                            VStack (spacing: 10){
                                
                                Text(info2[index].emoji)
                                    .font(.system(size: 50))
                                HStack{
                                    Text(word ?? "")
                                        .frame(minWidth: 75, minHeight: 40)
                                        .padding(9)
                                        .background(color)
                                        .foregroundColor(.black)
                                        .font(.largeTitle)
                                        .bold()
                                        .cornerRadius(10)
                                        .animation(.easeInOut(duration: 0.2), value: word)
                                        .onDrop(of: [.text], isTargeted: nil) { providers in
                                            let itemProvider = providers.first(where: { $0.hasItemConformingToTypeIdentifier("public.plain-text") })
                                            itemProvider?.loadObject(ofClass: NSString.self) { string, _ in
                                                if let word = string as? String {
                                                    // If the dropped item is a word, update the corresponding drop space and check if it's correct
                                                    if let draggedIndex = droppedWords2.firstIndex(where: { $0.word == self.draggedWord }) {
                                                        droppedWords2[draggedIndex].word = nil
                                                        droppedWords2[draggedIndex].isCorrect = false
                                                    }
                                                    draggedWord = nil
                                                    droppedWords2[index].word = word
                                                    droppedWords2[index].isCorrect = (word == rightOrder2[index])
                                                }
                                            }
                                            return true
                                        }
                                        .onDrag({
                                            draggedWord = word
                                            let itemProvider = NSItemProvider(object: word as! NSString)
                                            itemProvider.suggestedName = word
                                            return itemProvider
                                        })
                                        .fixedSize(horizontal: false, vertical: true) // Add this line to make the frame flexible
                                    
                                    Text(info2[index].terminacion)
                                        .foregroundColor(.black)
                                        .font(.largeTitle)
                                        .bold()
                                    
                                }
                                
                            }
                        }

                    }
           
            VStack{
                HStack{
                    Button(action: {
                        // Set showResults to true to show the correct/incorrect colors
                        showResults = true
                        
                        let allWordsCorrect = droppedWords1.allSatisfy { $0.isCorrect } && droppedWords2.allSatisfy { $0.isCorrect}
                        
                        
                        
                    }) {
                        Text("Revisar respuestas")
                            .padding(10)
                            .font(.title3)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .padding(.top, 50)
                    }
                    
                    if showResults {
                        Button(action: {
                            // Reset the droppedWords array to its initial state
                            droppedWords1 = Array(repeating: ("", false), count: 3)
                            droppedWords2 = Array(repeating: ("", false), count: 3)
                            showResults = false
                        }) {
                            Text("Intentar de nuevo")
                                .padding(10)
                                .font(.title3)
                                .background(Color.gray.opacity(0.8))
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                .padding(.top, 50)

                        }
                    }
                    
                }
                
            }
            Spacer()
        }
        
    }
}

struct EjercicioSilabasView_Previews: PreviewProvider {
    static var previews: some View {
        EjercicioSilabasView()
    }
}
