//
//  LetterWrittingView.swift
//  Intelia
//
//  Created by Francisco Mestizo on 15/04/23.
//

import SwiftUI
import PencilKit

struct UITextViewContainer: UIViewRepresentable {
    let text: String
    
    func makeUIView(context: UIViewRepresentableContext<Self>) -> UITextView {
        let view = UITextView()
        view.isScrollEnabled = false
        view.isEditable = true
        return view
    }
    
    func updateUIView(_ uiView: UITextView, context: UIViewRepresentableContext<Self>) {
        uiView.text = self.text.lowercased()
    }
}



struct LetterWrittingView: View {
    @State var letter: String = ""
    @State var feedback: String = "Start writing"
    @State var goodFeedback: Bool = true
    var body: some View {
        VStack {
            

                Text("A a")
            HStack{
                TextField(
                        "Write here",
                        text: $letter
                    )
                    .frame(height: 200)
                    .textCase(.lowercase)

                    .padding([.horizontal], 4)
                    .cornerRadius(16)
                    .padding(.horizontal, 24)
                    .border(.secondary)

                    .onChange(of: letter) { _ in
                        if(letter == "a" || letter == "A"){
                            feedback = "Great job"
                            goodFeedback = true
                        } else {
                            feedback = "Try again"
                            goodFeedback = false
                        }
                        
                    }
            }
            .frame(width: 500)
            Text(feedback)
                .foregroundColor(goodFeedback ? .green : .red)
        }
        
    }
}

struct LetterWrittingView_Previews: PreviewProvider {
    static var previews: some View {
        LetterWrittingView()
    }
}
