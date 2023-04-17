//
//  AudioHelperVie.swift
//  hackios
//
//  Created by Adrian Faz on 15/04/23.
//

import SwiftUI
import AVFoundation

struct AudioHelperView: View {
    @State var instructions: String  = "Instrucciones"

    var body: some View {
        HStack {
            Spacer()
            Button{
                speechToText(text: instructions)
            } label: {
                Image(systemName: "waveform.circle.fill")
                    .foregroundColor(.orange)
                    .font(.system(size: 72))
                    .padding(.trailing, 24)
            }
        }

    }
}

struct AudioHelperView_Previews: PreviewProvider {
    static var previews: some View {
        AudioHelperView()
    }
}

func speechToText(text: String){
    let utterance = AVSpeechUtterance(string: text)
    utterance.voice = AVSpeechSynthesisVoice(language: "es-MX")
    utterance.rate = 0.5
    
    
    utterance.volume = 0.5
    synthesizer.speak(utterance)
}
