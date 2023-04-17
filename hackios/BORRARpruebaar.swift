//
//  BORRARPruebaar.swift
//  ARTest
//
//  Created by Macías Romero on 16/04/23.
//

import SwiftUI
import RealityKit

struct BORRARPruebaar : View {
    var body: some View {
        ARViewContainer().edgesIgnoringSafeArea(.all)
    }
}

struct ARViewContainer: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        // Load the "Box" scene from the "Experience" Reality File
        let boxAnchor = try! NumerosAR.loadBox()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)
        
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}

#if DEBUG
struct BORRARPruebaar_Previews : PreviewProvider {
    static var previews: some View {
        BORRARPruebaar()
    }
}
#endif
