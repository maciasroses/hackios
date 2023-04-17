//
//  AprendeSumarView.swift
//  Intelia
//
//  Created by Francisco Mestizo on 16/04/23.
//

import SwiftUI

struct AprendeSumarView: View {
    @State var firstView = false
    @State var secondView = false
    @State var thirdView = false
    
    @State var firstButtonClicked = false
    @State var secondButtonClicked = false
    @State var thirdButtonClicked = false
    var body: some View {
        VStack{
            Text("Sumar ➕")
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
                Text("Es una operacion aritmética que consiste en juntar varias cantidades en una sola")
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
                    VStack{
                        
                        Text("🍊🍊")
                            .font(.system(size: 64))
                        Text("2")
                            .font(.system(size: 36))
                    }
                    Text("➕")
                        .font(.system(size: 36))
                    VStack{
                        
                        Text("🍊🍊")
                            .font(.system(size: 64))
                        Text("2")
                            .font(.system(size: 36))
                    }
                    Text("🟰")
                        .font(.system(size: 36))
                    VStack{
                        
                        Text("🍊🍊🍊🍊")
                            .font(.system(size: 64))
                        Text("4")
                            .font(.system(size: 36))
                    }
                }
                .padding(.bottom)
                .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                        withAnimation(.easeInOut(duration: 2)){
                            thirdView = true
                        }
                    }
                }
            }
            if thirdView {
                Text("Ahora haz un ejercicio tu mismo:")
                    .font(.system(size: 32))
                    .opacity(0.8)
                    .foregroundColor(.black)
                    .padding(.bottom)
                HStack(alignment: .center){
                    VStack{
                        
                        Text("🍊")
                            .font(.system(size: 64))
                        Text("1")
                            .font(.system(size: 36))
                    }
                    Text("➕")
                        .font(.system(size: 36))
                    VStack{
                        
                        Text("🍊🍊")
                            .font(.system(size: 64))
                        Text("2")
                            .font(.system(size: 36))
                    }
                    Text("🟰")
                        .font(.system(size: 36))
                    VStack{
                        
                        Text("🍊🍊🍊")
                            .font(.system(size: 64))
                        Text("?")
                            .font(.system(size: 36))
                    }
                }
                HStack{
                    Button {
                        firstButtonClicked = true
                    } label: {
                        Text("2\n🍊🍊")
                            .font(.system(size: 32, weight: .semibold))
                            .foregroundColor(.white)
                            .frame(width: 180, height: 100)
                            .background( firstButtonClicked ? .red : .teal)
                            .cornerRadius(10)
                            
                    }
                    
                    Button {
                        secondButtonClicked = true
                    } label: {
                        Text("3\n🍊🍊🍊")
                            .font(.system(size: 32))
                            .foregroundColor(.white)
                            .frame(width: 180, height: 100)
                            .background(secondButtonClicked ? .green : .teal)
                            .cornerRadius(10)
                            .padding(.horizontal, 50)
                    }
                    
                    Button {
                        thirdButtonClicked = true
                    } label: {
                        Text("4\n🍊🍊🍊🍊")
                            .font(.system(size: 32))
                            .foregroundColor(.white)
                            .frame(width: 180, height: 100)
                            .background(thirdButtonClicked ? .red : .teal)
                            .cornerRadius(10)
                    }
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
