//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Иван Никитин on 13/01/2018.
//  Copyright © 2018 Иван Никитин. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    private var randomBallNumber: Int = 0
    private var ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        newballImage()
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        newballImage()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            newballImage()
        }
    }
    
    private func newballImage() {
        randomBallNumber = Int(arc4random_uniform(4))
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
}

