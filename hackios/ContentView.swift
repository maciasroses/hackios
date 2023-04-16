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
                    SilabasHablar()
                } label: {
                    Text("Arroz")
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
