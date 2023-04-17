//
//  AprendeRestarView.swift
//  Intelia
//
//  Created by Francisco Mestizo on 16/04/23.
//

import SwiftUI

struct AprendeRestarView: View {
    @State var firstView = false
    @State var secondView = false
    @State var thirdView = false
    
    @State var firstButtonClicked = false
    @State var secondButtonClicked = false
    @State var thirdButtonClicked = false
    var body: some View {
        VStack{
            Text("Restar ➖")
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
                Text("Realizar una operación aritmética que consiste en quitar una cantidad de otra para saber la diferencia entre las dos.")
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
                        
                        Text("🎈🎈🎈")
                            .font(.system(size: 64))
                        Text("3")
                            .font(.system(size: 36))
                    }
                    Text("➖")
                        .font(.system(size: 36))
                    VStack{
                        
                        Text("🎈🎈")
                            .font(.system(size: 64))
                        Text("2")
                            .font(.system(size: 36))
                    }
                    Text("🟰")
                        .font(.system(size: 36))
                    VStack{
                        
                        Text("🎈")
                            .font(.system(size: 64))
                        Text("1")
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
                Text("Ahora haz un ejercicio tú mismo:")
                    .font(.system(size: 32))
                    .opacity(0.8)
                    .foregroundColor(.black)
                    .padding(.bottom)
                HStack(alignment: .center){
                    VStack{
                        
                        Text("🎈🎈🎈🎈🎈")
                            .font(.system(size: 64))
                        Text("5")
                            .font(.system(size: 36))
                    }
                    Text("➖")
                        .font(.system(size: 36))
                    VStack{
                        
                        Text("🎈🎈")
                            .font(.system(size: 64))
                        Text("2")
                            .font(.system(size: 36))
                    }
                    Text("🟰")
                        .font(.system(size: 36))
                    VStack{
                        
                        Text("🎈🎈🎈")
                            .font(.system(size: 64))
                        Text("?")
                            .font(.system(size: 36))
                    }
                }
                HStack{
                    Button {
                        secondButtonClicked = true
                    } label: {
                        Text("3\n🎈🎈🎈")
                            .font(.system(size: 32))
                            .foregroundColor(.white)
                            .frame(width: 200, height: 100)
                            .background(secondButtonClicked ? .green : .teal)
                            .cornerRadius(10)
                    }
                    
                    Button {
                        firstButtonClicked = true
                    } label: {
                        Text("1\n🎈")
                            .font(.system(size: 32, weight: .semibold))
                            .foregroundColor(.white)
                            .frame(width: 200, height: 100)
                            .background( firstButtonClicked ? .red : .teal)
                            .cornerRadius(10)
                            .padding(.horizontal, 50)
                            
                    }
                    
                    Button {
                        thirdButtonClicked = true
                    } label: {
                        Text("5\n🎈🎈🎈🎈🎈")
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

struct AprendeRestarView_Previews: PreviewProvider {
    static var previews: some View {
        AprendeRestarView()
    }
}
