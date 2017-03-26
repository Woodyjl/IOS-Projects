//
//  HappinessViewController.swift
//  Happiness
//
//  Created by Woody Jean-Louis on 6/25/16.
//  Copyright © 2016 Woody Jean-Louis. All rights reserved.
//

import UIKit

class HappinessViewController: UIViewController, FaceViewDataSource {
    
    @IBOutlet weak var faceView: FaceView! {
        didSet {
            faceView.dataSource = self
            faceView.addGestureRecognizer(UIPinchGestureRecognizer(target: faceView, action: "scale:"))
        }
    }
    
    
    @IBAction func revertSize(gesture: UITapGestureRecognizer) {
        gesture.numberOfTapsRequired = 2
        //faceView.scale = 0.90
        faceView.scale = 0.90
    }
    
    var happiness: Int = 80 { // 0 = very sad, 100 = ecstatic
        didSet {
            happiness = min(max(happiness, 0), 100)
            print("happiness = \(happiness)")
            updateUI()
        }
    }
    
    private struct Constants {
        static let HappinessGestureScale: CGFloat = 4
    }
    
    @IBAction func changedHappiness(gesture: UIPanGestureRecognizer) {
        switch gesture.state {
        case .Ended: fallthrough
        case .Changed:
            let translation = gesture.translationInView(faceView)
            let happinessChange = -Int(translation.y / Constants.HappinessGestureScale)
            if happinessChange != 0 {
                happiness += happinessChange
                gesture.setTranslation(CGPointZero, inView: faceView)
            }
        default: break
        }
    }
    private func updateUI() {
        faceView?.setNeedsDisplay()
        title = "\(happiness)"
    }
    func smiliniessForFaceView(sender: FaceView) -> Double? {
        return Double(happiness - 50)/50
    }
}
