//
//  ContentView.swift
//  hackios
//
//  Created by Macías Romero on 15/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack{
                NavigationLink{
                    //SilabasHablar()
                    AprendeSumarView()
                } label: {
                    Text("Arroz")
                }
                NavigationLink{
                    //SilabasHablar()
                    AprendeRestarView()
                } label: {
                    Text("Epazote")
                }
                NavigationLink{
                    //SilabasHablar()
                    AprendeMultView()
                } label: {
                    Text("Zapato")
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
