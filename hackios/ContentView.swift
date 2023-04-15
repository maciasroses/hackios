//
//  ContentView.swift
//  hackios
//
//  Created by Macías Romero on 15/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            HStack {
                VStack{
                    Text("Title1")
                    ForEach(0..<3, id:  \.self) { number in
                        HStack{
                            Button(action: {
                                print("Holi")
                            }, label: {
                                Image(systemName: "speaker.wave.2.fill")
                                    .font(.system(size: 25,weight: .regular, design: .default) )
                            }
                            )
                            Button(action: {
                                print("Holi2")
                            }, label: {
                                Image(systemName: "speaker.wave.2.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width:25)
                                    .padding(.horizontal,5)
                            Text(  "Ejemplo").foregroundColor(.black).fontWeight(.semibold)
                            }
                            )
                        }
                    }
                }
                .padding()
                
                VStack{
                    Text("Title2")
                    ForEach(0..<3, id:  \.self) { number in
                        HStack{
                            Button(action: {
                                print("Holi")
                            }, label: {
                                Image(systemName: "speaker.wave.2.fill")
                                    .font(.system(size: 25,weight: .regular, design: .default) )
                            }
                            )
                            Button(action: {
                                print("Holi2")
                            }, label: {
                                Image(systemName: "speaker.wave.2.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width:25)
                                    .padding(.horizontal,5)
                            Text(  "Ejemplo").foregroundColor(.black).fontWeight(.semibold)
                            }
                            )
                        }
                    }
                }

                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
