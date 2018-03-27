//
//  ViewController.swift
//  8 Ball
//
//  Created by Nick Marhal on 3/21/18.
//  Copyright © 2018 Nikandr Marhal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ballImage: UIImageView!

    @IBAction func askButton(_ sender: UIButton) {
        newBall()
    }

    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBall()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        newBall()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func newBall() {
        let index = arc4random_uniform(5)
        ballImage.image = UIImage(named: "ball\(index+1)")
    }
}

