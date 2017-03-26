//
//  ViewController.swift
//  Psychologist
//
//  Created by Woody Jean-Louis on 7/9/16.
//  Copyright © 2016 Woody Jean-Louis. All rights reserved.
//

import UIKit

class PsychologistViewController: UIViewController {
    
    
    @IBAction func nothing(sender: UIButton) {
       performSegueWithIdentifier("Show Nothingness", sender: nil)
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var destination = segue.destinationViewController as? UIViewController
        if let navCon = destination as? UINavigationController {
            destination = navCon.visibleViewController
        }
        
        
        if let hvc = destination as? HappinessViewController {
            if let identifier = segue.identifier {
                switch identifier {
                    case "Show Sad":
                        hvc.happiness = 100
                    case "Show Happy":
                        hvc.happiness = 0
                    case "Show Nothingness":
                        hvc.happiness = 20
                    default:
                        hvc.happiness = 50
                }
            }
        }
    }


}

