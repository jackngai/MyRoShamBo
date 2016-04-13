//
//  Play.swift
//  MyRoShamBo
//
//  Created by Jack Ngai on 3/19/16.
//  Copyright © 2016 Jack Ngai. All rights reserved.
//



// This swift file was somehow created outside of the "MyRoShamoBo" folder. Is this an issue? How do I move it into the folder in Xcode?
import UIKit

class ResultVC:UIViewController{
    
    @IBOutlet weak var resultMessage:UILabel!
    var userChoice = "test"
    var cpuChoice = "test"
    var Finalresult = "test"
    
    //print doesn't work, getting a "Expected declaration" error, not sure why
    //How do I get this info displayed in the view?
    //print(userChoice, cpuChoice, Finalresult)
    

    
    @IBAction func PlayAgain(){
        var controller:ViewController
        controller = self.storyboard?.instantiateViewControllerWithIdentifier("ViewController") as! ViewController
        
        self.presentViewController(controller, animated: true, completion: nil)
    }

}


