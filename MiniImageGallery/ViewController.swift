//
//  ViewController.swift
//  MiniImageGallery
//
//  Created by Jaime Jazareno III on 03/01/2018.
//  Copyright © 2018 Jaime Jazareno III. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var label: UILabel!
    
    var imageInt = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func back(_ sender: Any) {
        imageInt -= 1
        self.imageGallery()
    }
    
    @IBAction func next(_ sender: Any) {
        
        imageInt += 1
        
        self.imageGallery()
        
    }
    
    func imageGallery() {
        label.text = String("\(imageInt)/6")
        
        imageView.image = UIImage(named: "Image\(imageInt)")
        
        if imageInt == 1 {
            backButton.isEnabled = false
            backButton.alpha = 0.25
        }
        else if imageInt == 6 {
            nextButton.isEnabled = false
            nextButton.alpha = 0.25
        }
        else {
            backButton.isEnabled = true
            nextButton.isEnabled = true
            
            nextButton.alpha = 1
            backButton.alpha = 1
        }
    }
    
}

