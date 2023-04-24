//
//  AprendeMultView.swift
//  Intelia
//
//  Created by Francisco Mestizo on 16/04/23.
//

import SwiftUI

struct AprendeMultView: View {
    @State var firstView = false
    @State var secondView = false
    @State var thirdView = false
    
    @State var firstButtonClicked = false
    @State var secondButtonClicked = false
    @State var thirdButtonClicked = false
    var body: some View {
        NavigationStack {
            VStack{
                ZStack{
                    AudioHelperView(instructions: "En esta pantalla aprenderás la teoría de las multiplicaciones. Una multiplicación es una suma abreviada donde un número se repite tantas veces como el otro número lo indica, dando el mismo reultado; puedes ver un ejemplo de una multiplicación con flores. Ahora, toca el botón azul para resolver una multiplicación.")
                    Text("Multiplicar ✖️")
                        .font(.system(size: 70, weight: .bold))
                        .padding(.bottom)
                        .onAppear{
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                                withAnimation(.easeInOut(duration: 0.5)){
                                    firstView = true
                                }
                            }
                        }
                }
                if firstView {
                    Text("Es una suma abreviada donde un número se repite tantas veces como el otro número lo indica, dando el mismo reultado")
                        .font(.system(size: 32))
                        .foregroundColor(.black)
                        .opacity(0.8)
                        .padding(.horizontal, 100)
                        .padding(.bottom, 15)
                        .onAppear{
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                                withAnimation(.easeInOut(duration: 0.5)){
                                    secondView = true
                                }
                            }
                        }
                    }
                if secondView {
                    HStack(alignment: .center){
                        VStack {
                            if secondView {
                                HStack {
                                    Text("3")
                                        .font(.system(size: 36))
                                    Text("✖️")
                                        .font(.system(size: 36))
                                    Text("3")
                                        .font(.system(size: 36))
                                }.padding(.bottom)
                            }
                            HStack {
                                VStack{
                                    Text("🏵️🏵️🏵️")
                                        .font(.system(size: 64))
                                    Text("3")
                                        .font(.system(size: 36))
                                }
                                Text("➕")
                                    .font(.system(size: 36))
                                VStack{
                                    
                                    Text("🏵️🏵️🏵️")
                                        .font(.system(size: 64))
                                    Text("3")
                                        .font(.system(size: 36))
                                }
                                Text("➕")
                                    .font(.system(size: 36))
                                VStack{
                                    
                                    Text("🏵️🏵️🏵️")
                                        .font(.system(size: 64))
                                    Text("3")
                                        .font(.system(size: 36))
                                }
                            }
                        }
                        
                        Text("🟰")
                            .font(.system(size: 36))
                        
                        VStack{
                            HStack{
                                Text("🏵️🏵️🏵️\n🏵️🏵️🏵️\n🏵️🏵️🏵️")
                                    .font(.system(size: 64))
                                Text("9")
                                    .font(.system(size: 36))
                            }
                            
                        }
                    }
                    .padding(.bottom)
                    .onAppear{
                        DispatchQueue.main.asyncAfter(deadline: .now() + 4){
                            withAnimation(.easeInOut(duration: 2)){
                                thirdView = true
                            }
                        }
                    }
                }
                if thirdView {
                        NavigationLink {
                            MultEjercicio()
                        } label: {
                            Text("Ir al ejercicio")
                                .font(.system(size: 32, weight: .semibold))
                                .foregroundColor(.white)
                                .frame(width: 225, height: 100)
                                .background(secondButtonClicked ? .green : .teal)
                                .cornerRadius(10)
                        }
                }
            }
        }
    }
}

struct AprendeMultView_Previews: PreviewProvider {
    static var previews: some View {
        AprendeMultView()
    }
}
