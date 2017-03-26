//
//  textViewController.swift
//  Psychologist
//
//  Created by Woody Jean-Louis on 7/10/16.
//  Copyright © 2016 Woody Jean-Louis. All rights reserved.
//

import UIKit

class textViewController: UIViewController {
   
    @IBOutlet weak var textView: UITextView!{
        didSet {
            textView.text = text
        }
    }

    var text: String = "" {
        didSet {
            textView?.text = text
        }
    }
    
    
    
    
    
    
    
    

}
