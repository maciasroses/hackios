//
//  PrismasView.swift
//  Intelia
//
//  Created by Macías Romero on 17/04/23.
//

import SwiftUI
import RealityKit

struct PrismasView : View {
    var body: some View {
        ARViewContainerPrismasView().edgesIgnoringSafeArea(.all)
    }
}

struct ARViewContainerPrismasView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        // Load the "Box" scene from the "Experience" Reality File
        let boxAnchor = try! PrismasAR.loadBox()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)
        
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}

#if DEBUG
struct PrismasView_Previews : PreviewProvider {
    static var previews: some View {
        PrismasView()
    }
}
#endif
