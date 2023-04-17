//
//  ContentView.swift
//  Intelia
//
//  Created by Adrian Faz & Macías Romero on 15/04/23.
//

import SwiftUI

struct ContentView: View {
    @State var firstTime: Bool = true
    @State var isPopupPresented = false
    var body: some View {
        NavigationStack{
            VStack{
                
                AudioHelperView(instructions: "En pantalla puedes ver dos botones, el de la izquierda es de Español y el de la derecha es de Matemáticas. Presiona el botón que te interese aprender.")
    
                Text("Intelia")
                    .font(.system(size: 92, weight: .bold))
                    .padding(.top, 90)
                Text("Selecciona alguno de los botones para aprender más sobre ellos.")
                    .foregroundColor(.gray)
                    .font(.system(size: 32))
                    .padding(.bottom, 120)
                HStack{
                    NavigationLink{
                        EspaniolView()
                    } label: {
                        Text("Español 📓")
                            .font(.system(size: 32, weight: .semibold))
                            .foregroundColor(.white)
                            .padding(.horizontal, 90)
                            .padding(.vertical, 26)
                            .background(RoundedRectangle(cornerRadius: 20)
                                .fill(.teal
                                     )
                                .shadow(radius: 4))
                    }
                    .padding(.trailing, 75)
                    
                    NavigationLink{
                        MatematicasView()
                    } label: {
                        Text("Matemáticas 🧮")
                            .font(.system(size: 32, weight: .semibold))
                            .foregroundColor(.white)
                            .padding(.horizontal, 70)
                            .padding(.vertical, 26)
                            .background(RoundedRectangle(cornerRadius: 20)
                                .fill(.teal)
                                .shadow(radius: 4))
                    }
                }
                .padding(.bottom, 40)
                Spacer()
                HStack{
                    Spacer()
                    Button{
                       isPopupPresented = true
                    } label: {
                        Image(systemName: "questionmark.square.fill")
                            .foregroundColor(.black)
                            .font(.system(size: 48))
                            .padding(.leading, 24)
                    }
                    Spacer()
                }
            }.onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    
                    if firstTime{
                        speechToText(text: "¡Bienvenido a Intelia! Una aplicación increíble donde podrás aprender Matemáticas y Español. Puedes presionar el botón naranja que se encuentra en todas las pantallas para que te explique las instrucciones!")
                    }
                    
                    firstTime = false
                }
                
               
            }
        }.sheet(isPresented: $isPopupPresented){
            PopupView(isPresented: $isPopupPresented).presentationDetents([.height(700)])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct PopupView: View {
    @Binding var isPresented: Bool



    var body: some View {
            VStack {
                ZStack{
                    AudioHelperView(instructions: "Bienvenido a Intelia. Intelia es una aplicación diseñada para iPad, que busca apoyar a los niños de México a adquirir conocimientos relacionados con los fundamentos de Español y Matemáticas. Esta aplicación nace para atacar el O De eSe #4: Educación de calidad. En línea con este objetivo, nuestra aplicación busca hacer que el aprendizaje sea más accesible, inclusivo y equitativo para todos los mexicanos. Utilizamos tecnologías como reconocimiento de voz, voz a texto, realidad aumentada y el uso del Apple Pencil para ofrecer una experiencia educativa interactiva y atractiva.")
                    VStack{
                        Text("🧑🏻‍🎓📕📚")
                            .font(.system(size: 60))
                            .padding(.bottom)
                        
                    }
                }
                HStack{
                    Text("¡Bienvenid@ a")
                        .bold()
                        .font(.system(size: 45))
                    
                    Text("Intelia!")
                        .bold()
                        .font(.system(size: 45))
                        .foregroundColor(.teal)
                }
                .padding(.bottom)
                
                Text("Intelia es una aplicación diseñada para iPad, que busca apoyar a los niños de México a adquirir conocimientos relacionados con los fundamentos de Español y Matemáticas.\n\nEsta aplicación nace para atacar el ODS #4: Educación de calidad. En línea con este objetivo, nuestra aplicación busca hacer que el aprendizaje sea más accesible, inclusivo y equitativo para todos los mexicanos.\n\nUtilizamos tecnologías como reconocimiento de voz, voz a texto, realidad aumentada y el uso del Apple Pencil para ofrecer una experiencia educativa interactiva y atractiva.")
                    .font(.
                          title2)
     
                
                
            }.padding(50)
            
            
            
        }
    }


