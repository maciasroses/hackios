//
//  AprendeSumarView.swift
//  hackios
//
//  Created by Alumno on 16/04/23.
//

import SwiftUI

struct AprendeSumarView: View {
    var body: some View {
        VStack{
            Text("Sumar")
            Text("Es una operacion aritmética que consiste en juntar varias cantidades (sumandos) en una sola (suma)")
            Text("Ejemplo:")
            HStack(alignment: .center){
                VStack{
                    
                    Text("🍊🍊")
                    Text("2")
                }
                Text("+")
                VStack{
                    
                    Text("🍊🍊")
                    Text("2")
                }
                Text("=")
                VStack{
                    
                    Text("🍊🍊\n🍊🍊")
                    Text("4")
                }
            }
            Text("Ahora haz un ejercicio tu mismo:")
            HStack(alignment: .center){
                VStack{
                    
                    Text("🍊")
                    Text("1")
                }
                Text("+")
                VStack{
                    
                    Text("🍊🍊")
                    Text("2")
                }
                Text("=")
                VStack{
                    
                    Text("🍊🍊\n🍊")
                    Text("______")
                }
            }
            HStack{
                Button {
                    //accion
                } label: {
                    Text("2")
                }
                
                Button {
                    //accion
                } label: {
                    Text("3")
                }
                
                Button {
                    //accion
                } label: {
                    Text("4")
                }
            }
        }
    }
}

struct AprendeSumarView_Previews: PreviewProvider {
    static var previews: some View {
        AprendeSumarView()
    }
}
