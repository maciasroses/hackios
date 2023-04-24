//
//  FigurasGeometricasView.swift
//  Intelia
//
//  Created by Macías Romero on 17/04/23.
//

import SwiftUI
import RealityKit

struct FigurasGeometricasView : View {
    var body: some View {
        ARViewContainerFigurasGeometricasView().edgesIgnoringSafeArea(.all)
    }
}

struct ARViewContainerFigurasGeometricasView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        // Load the "Box" scene from the "Experience" Reality File
        let boxAnchor = try! FigurasGeometricas.loadBox()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)
        
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}

#if DEBUG
struct FigurasGeometricasView_Previews : PreviewProvider {
    static var previews: some View {
        FigurasGeometricasView()
    }
}
#endif
