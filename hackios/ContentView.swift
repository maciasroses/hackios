//
//  ContentView.swift
//  hackios
//
//  Created by Macías Romero on 15/04/23.
//

import SwiftUI

struct ContentView: View {
    @State var firstTime: Bool = true
    var body: some View {
        NavigationStack{
            VStack{
                
                AudioHelperView(instructions: "Bienvenido a Intelia, una aplicación increíble donde podrás aprender acerca de Español y Matemáticas. En pantalla puedes ver dos botones, el de la izquierda es de Español y el de la derecha es de Matemáticas. Presiona el botón que te interese aprender. ")
    
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
                                .fill(.blue)
                                .shadow(radius: 4))
                    }
                    .padding(.trailing, 75)
                    
                    NavigationLink{
                        //MateView()
                    } label: {
                        Text("Matemáticas 🧮")
                            .font(.system(size: 32, weight: .semibold))
                            .foregroundColor(.white)
                            .padding(.horizontal, 70)
                            .padding(.vertical, 26)
                            .background(RoundedRectangle(cornerRadius: 20)
                                .fill(.blue)
                                .shadow(radius: 4))
                    }
                }
                .padding(.bottom, 40)
                Spacer()
                HStack{
                    Spacer()
                    Button{
                        //Abrir popup para ver la informacion de la aplicacion y porque se hizo
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
                        speechToText(text: "¡Bienvenido a Intelia! Una aplicación increíble donde podrás aprender Matemáticas y Español. Puedes presionar el botón naranja que se encuentra todas las pantallas para que te explique las instrucciones!")
                    }
                    
                    firstTime = false
                }
                
                
               
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

