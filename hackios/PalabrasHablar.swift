//
//  PalabrasHablar.swift
//  hackios
//
//  Created by Macías Romero on 15/04/23.
//

import SwiftUI
import AVFoundation
import Speech
let synthetiser = AVSpeechSynthesizer()

let audioEngine = AVAudioEngine()
let speechRecognizer: SFSpeechRecognizer? = SFSpeechRecognizer(locale: Locale.init(identifier: "es-MX"))
let request = SFSpeechAudioBufferRecognitionRequest()
var speechTask: SFSpeechRecognitionTask! = nil
var isStart: Bool = false

struct PalabrasHablar: View {
    @State var isDisabled: Bool = false
    @State var message = "..."
    @State var feedback = "Try now"
    @State var feedbackStatus = 0
    @State var buttonImage = "mic.circle.fill"
    var body: some View {
        VStack{
            Text("🐝")
                .font(.system(size: 100))
            HStack{
                Text("A - be - ja")
                    .font(.system(size: 60))
                Button(action: {
                    let utterance = AVSpeechUtterance(string: "A. be. ja")
                    utterance.voice = AVSpeechSynthesisVoice(language: "es-MX")
                    utterance.rate = -1
                    synthetiser.speak(utterance)
                }, label: {
                    Image(systemName: "speaker.wave.2.circle.fill")
                        .font(.system(size: 30,weight: .regular, design: .default))
                        .foregroundColor(.blue)
                        .padding(.top)
                }
                )
                
            }
            Text("(Abeja)")
                .font(.system(size: 32))
                .foregroundColor(.gray)
            Button(action: {
                isStart = !isStart
                
                if isStart {
                    buttonImage = "stop.circle.fill"
                    startSpeechRecognition()
                } else {
                    buttonImage = "mic.circle.fill"
                    cancelSpeechRecognition()
                    if message.contains("abeja") || message.contains("Abeja"){
                        feedback = "¡Excelente!"
                        feedbackStatus = 1
                    } else {
                        feedback = "Vuelve a intentar"
                        feedbackStatus = 2
                    }
                }
            }, label: {
                Image(systemName: buttonImage)
                    .font(.system(size: 120))
                    .foregroundColor(.blue)
                    .padding(40)
            }
            )
            .onAppear{
                requestPermission()
            }
            Text(message)
                .foregroundColor(.gray)
                .padding()
            Text(feedback)
                .font(.system(size: 28, weight: .semibold))
                .padding(.top, 10)
                .foregroundColor( feedbackStatus == 0 ? .black : feedbackStatus == 1 ? .green : .orange)
        }
    }
    
    func requestPermission(){
        isDisabled = true
        SFSpeechRecognizer.requestAuthorization({(authState) in
            OperationQueue.main.addOperation{
                if authState == .authorized {
                    //print("Accepted")
                    isDisabled = false
                } else {
                    //Alert when user denied permission
                    //alertView(message: "User denied permission")
                    isDisabled = true
                }
            }
        })
    }

    func startSpeechRecognition(){
        let node = audioEngine.inputNode
        let recordingFormat = node.outputFormat(forBus: 0)
        
        node.installTap(onBus: 0, bufferSize: 1024, format: recordingFormat) { (buffer, _) in
            request.append(buffer)
        }
        
        audioEngine.prepare()
        
        do{
            try audioEngine.start()
        } catch let error {
            //Error si no nos deja iniciar el audio engine
            print(error)
        }
        
        guard let myRecognition = SFSpeechRecognizer() else {
            //Alert for voice recognition not available on the region
            return
        }
        
        if !myRecognition.isAvailable {
            //Alert for recognition is free right now, please try again later
        }
        
        
        speechTask = speechRecognizer?.recognitionTask(with: request, resultHandler: { response, error in
            guard let response = response else {
                if error != nil {
                    //Alerta con el error generado
                } else {
                    //Alerta con problemas al generar la respuesta
                }
                return
            }
            
            let finalMessage = response.bestTranscription.formattedString
           
            message = finalMessage
            //print("Message: \(finalMessage)")

        })
        
    }

    func cancelSpeechRecognition(){
        speechTask.finish()
        speechTask.cancel()
        speechTask = nil
        
        request.endAudio()
        audioEngine.stop()
        audioEngine.inputNode.removeTap(onBus: 0)
    }
}

struct PalabrasHablar_Previews: PreviewProvider {
    static var previews: some View {
        PalabrasHablar()
    }
}
