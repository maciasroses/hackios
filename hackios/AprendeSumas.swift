//
//  AprendeSumas.swift
//  hackios
//
//  Created by Alumno on 16/04/23.
//

import SwiftUI

struct AprendeSumas: View {
    var body: some View {
        VStack{
            Text("Sumar")
            Text("Es una operacion aritmética que consiste en juntar varias cantidades (sumandos) en una sola (suma)")
            HStack(alignment: .center){
                VStack{
                    Text("2")
                    Text("🍊🍊")
                }
                Text("+")
                VStack{
                    Text("2")
                    Text("🍊🍊")
                }
                Text("=")
                VStack{
                    Text("______")
                    Text("🍊🍊\n🍊🍊")
                }
            }
        }
    }
}

struct AprendeSumas_Previews: PreviewProvider {
    static var previews: some View {
        AprendeSumas()
    }
}
