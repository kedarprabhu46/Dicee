//
//  ViewController.swift
//  Dicee
//
//  Created by Apple on 06/07/18.
//  Copyright © 2018 Kedar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1:Int=0
    var randomDiceIndex2:Int=0
    
    //let diceArray=["dice1","dice2","dice3","dice4","dice5","dice6"]
    let diceArray=[#imageLiteral(resourceName: "dice1"),#imageLiteral(resourceName: "dice2"),#imageLiteral(resourceName: "dice3"),#imageLiteral(resourceName: "dice4"),#imageLiteral(resourceName: "dice5"),#imageLiteral(resourceName: "dice6")]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        rollAction()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        rollAction()
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        rollAction()
    }
    
    
    
    
    func rollAction()
    {
        randomDiceIndex1=Int(arc4random_uniform(6))
        randomDiceIndex2=Int(arc4random_uniform(6))
        //diceImageView1.image=UIImage(named: diceArray[randomDiceIndex1])
        //diceImageView2.image=UIImage(named: diceArray[randomDiceIndex2])
        diceImageView1.image=diceArray[randomDiceIndex1]
        diceImageView2.image=diceArray[randomDiceIndex2]
    }
}

