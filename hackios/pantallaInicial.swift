//
//  pantallaInicial.swift
//  hackios
//
//  Created by Alumno on 15/04/23.
//

import SwiftUI

struct pantallaInicial: View {
    var body: some View {
        NavigationStack{
            VStack{
                HStack {
                    Spacer()
                    Button{
                        //Acciones
                    } label: {
                        Image(systemName: "waveform.circle.fill")
                            .foregroundColor(.orange)
                            .font(.system(size: 72))
                            .padding(.trailing, 24)
                    }
                }
                Text("Intelia")
                    .font(.system(size: 92, weight: .bold))
                    .padding(.top, 90)
                Text("Selecciona alguno de los botones para aprender más sobre ellos.")
                    .foregroundColor(.gray)
                    .font(.system(size: 32))
                    .padding(.bottom, 120)
                HStack{
                    NavigationLink{
                        //EspaniolView()
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
            }
        }
    }
}

struct pantallaInicial_Previews: PreviewProvider {
    static var previews: some View {
        pantallaInicial()
    }
}
