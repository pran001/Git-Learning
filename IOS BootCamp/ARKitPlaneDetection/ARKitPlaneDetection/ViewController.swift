//
//  ViewController.swift
//  ARKitPlaneDetection
//
//  Created by Pranav Arjun on 06/04/20.
//  Copyright © 2020 Pranav Arjun. All rights reserved.
//

import UIKit
import SceneKit
import ARKit

class ViewController: UIViewController, ARSCNViewDelegate {
    
    @IBOutlet var sceneView: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.sceneView.debugOptions = [ARSCNDebugOptions.showFeaturePoints]
        
        // Set the view's delegate
        sceneView.delegate = self
        
        // Show statistics such as fps and timing information
        sceneView.showsStatistics = true
        
        // Create a new scene
        
        // Set the scene to the view
        //sceneView.scene = shipScene
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration
        let configuration = ARWorldTrackingConfiguration()
        configuration.planeDetection = .horizontal
        
        // Run the view's session
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            
            let touchLocation = touch.location(in: sceneView)
            
            let results = sceneView.hitTest(touchLocation, types: .existingPlaneUsingExtent)
            
            if let hitResult = results.first {
                
                let shipScene = SCNScene(named: "art.scnassets/ship.scn")!
                
                if let shipNode = shipScene.rootNode.childNode(withName: "shipMesh", recursively: true){
                    shipNode.position = SCNVector3(
                        x:hitResult.worldTransform.columns.3.x,
                        y:hitResult.worldTransform.columns.3.y + shipNode.boundingSphere.radius,
                        z:hitResult.worldTransform.columns.3.z
                    )
                    
                    sceneView.scene.rootNode.addChildNode(shipNode)
                    
                    let randomX = Float(arc4random_uniform(4) + 1 ) * (Float.pi/2)
                    let randomZ = Float(arc4random_uniform(4) + 1) * (Float.pi/2)
                    
                    shipNode.runAction(SCNAction.rotateBy(x: CGFloat(randomX), y: 0, z: CGFloat(randomZ), duration: 0.5))
                }
                
            }
        }
    }
    
    func renderer(_ renderer: SCNSceneRenderer, didAdd node: SCNNode, for anchor: ARAnchor) {
        if anchor is ARPlaneAnchor {
            
            let planeAnchor = anchor as! ARPlaneAnchor
            
            let plane = SCNPlane(width: CGFloat(planeAnchor.extent.x), height: CGFloat(planeAnchor.extent.z))
            
            let planeNode = SCNNode()
            planeNode.position = SCNVector3(x:planeAnchor.center.x, y:0, z:planeAnchor.center.z)
            
            planeNode.transform = SCNMatrix4MakeRotation(-Float.pi/2, 1, 0, 0)
            
            let gridMaterial = SCNMaterial()
            
            gridMaterial.diffuse.contents = UIImage(named: "art.scnassets/pinpng.com-tumblr-logo-png-transparent-858854.png")
            plane.materials = [gridMaterial]
            
            planeNode.geometry = plane
            
            sceneView.scene.rootNode.addChildNode(planeNode)
        } else {
            return
        }
        
    }
    
    // MARK: - ARSCNViewDelegate
    
    /*
     // Override to create and configure nodes for anchors added to the view's session.
     func renderer(_ renderer: SCNSceneRenderer, nodeFor anchor: ARAnchor) -> SCNNode? {
     let node = SCNNode()
     
     return node
     }
     */
    
    //    func session(_ session: ARSession, didFailWithError error: Error) {
    //        // Present an error message to the user
    //
    //    }
    //
    //    func sessionWasInterrupted(_ session: ARSession) {
    //        // Inform the user that the session has been interrupted, for example, by presenting an overlay
    //
    //    }
    //
    //    func sessionInterruptionEnded(_ session: ARSession) {
    //        // Reset tracking and/or remove existing anchors if consistent tracking is required
    //
    //    }
}
