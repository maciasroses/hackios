//
//  MultEjercicio.swift
//  hackios
//
//  Created by Alumno on 16/04/23.
//

import SwiftUI

struct MultEjercicio: View {
    @State var firstView = false
    @State var secondView = false
    @State var thirdView = false
    
    @State var firstButtonClicked = false
    @State var secondButtonClicked = false
    @State var thirdButtonClicked = false
    var body: some View {
        NavigationStack {
            VStack{
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
                if firstView {
                    Text("Selecciona el botón con el resultado correcto")
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
                                    Text("2")
                                        .font(.system(size: 36))
                                    Text("✖️")
                                        .font(.system(size: 36))
                                    Text("2")
                                        .font(.system(size: 36))
                                }.padding(.bottom)
                            }
                            HStack {
                                VStack{
                                    Text("🧸🧸")
                                        .font(.system(size: 64))
                                    Text("2")
                                        .font(.system(size: 36))
                                }
                                Text("➕")
                                    .font(.system(size: 36))
                                VStack{
                                    
                                    Text("🧸🧸")
                                        .font(.system(size: 64))
                                    Text("2")
                                        .font(.system(size: 36))
                                }
                            }
                        }
                        
                        Text("🟰")
                            .font(.system(size: 36))
                        
                        VStack{
                            HStack{
                                Text("🧸🧸\n🧸🧸")
                                    .font(.system(size: 64))
                                Text("?")
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
                    HStack{
                        Button {
                            firstButtonClicked = true
                        } label: {
                            Text("2\n🧸🧸")
                                .font(.system(size: 32, weight: .semibold))
                                .foregroundColor(.white)
                                .frame(width: 200, height: 100)
                                .background( firstButtonClicked ? .red : .teal)
                                .cornerRadius(10)
                                
                                
                        }
                        
                        Button {
                            secondButtonClicked = true
                        } label: {
                            Text("4\n🧸🧸🧸🧸")
                                .font(.system(size: 32))
                                .foregroundColor(.white)
                                .frame(width: 200, height: 100)
                                .background(secondButtonClicked ? .green : .teal)
                                .cornerRadius(10)
                                .padding(.horizontal, 50)
                        }
                        
                        Button {
                            thirdButtonClicked = true
                        } label: {
                            Text("3\n🧸🧸🧸")
                                .font(.system(size: 32))
                                .foregroundColor(.white)
                                .frame(width: 200, height: 100)
                                .background(thirdButtonClicked ? .red : .teal)
                                .cornerRadius(10)
                        }
                    }
                }
            }
        }
    }
}

struct MultEjercicio_Previews: PreviewProvider {
    static var previews: some View {
        MultEjercicio()
    }
}
