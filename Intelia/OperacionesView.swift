//
//  OperacionesView.swift
//  Intelia
//
//  Created by Macías Romero on 16/04/23.
//

import SwiftUI
import RealityKit

struct OperacionesView : View {
    var body: some View {
        ARViewContainerOperaciones().edgesIgnoringSafeArea(.all)
    }
}

struct ARViewContainerOperaciones: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        // Load the "Box" scene from the "Experience" Reality File
        let boxAnchor = try! OperacionesAR.loadBox()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)
        
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}

#if DEBUG
struct OperacionesView_Previews : PreviewProvider {
    static var previews: some View {
        OperacionesView()
    }
}
#endif
