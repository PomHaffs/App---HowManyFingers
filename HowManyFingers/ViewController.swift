//
//  ViewController.swift
//  HowManyFingers
//
//  Created by Tomas-William Haffenden on 9/12/16.
//  Copyright © 2016 PomHaffs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var fingerTextField: UITextField!
   
    @IBAction func guessButtonPressed(_ sender: Any) {
        
        let randomNum = Int(arc4random_uniform(11))
        let guess = Int(fingerTextField.text!)
        
        //var output = resultLabel.text
        
        if guess == randomNum {
            resultLabel.text = "Well Done! That is her fav number of fingers!"
        } else if guess! <= randomNum {
            resultLabel.text = "Nope, more fingers than that!"
        } else if guess! >= randomNum {
            resultLabel.text = "Nope, too many fingers"
        } else if guess == 0 {
            resultLabel.text = "Come on, you know she loves fingers"
        } else {
            resultLabel.text = "Something has gone wrong with the logic???"
        }
        
        
    }
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

