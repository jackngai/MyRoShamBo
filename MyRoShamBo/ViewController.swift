//
//  ViewController.swift
//  MyRoShamBo
//
//  Created by Jack Ngai on 3/17/16.
//  Copyright © 2016 Jack Ngai. All rights reserved.
//

import UIKit
import GameplayKit



class ViewController: UIViewController {
    
    let hand = ["rock", "paper", "scissors"]
    var you = "rock"
    var cpu = "rock"
    var result = "Something went wrong. Redo."
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rock(){
        you = hand[0]
        cpu = CPUPlay()
        result = match(you, cpu: cpu)
        var controller:ResultVC
        controller = self.storyboard?.instantiateViewControllerWithIdentifier("ResultVC") as! ResultVC
        
        //Passing the values to ResultVC, is this the correct way to do it?
        controller.userChoice = you
        controller.cpuChoice = cpu
        controller.Finalresult = result
        self.presentViewController(controller, animated: true, completion: nil)
        
        
    }
    
    @IBAction func Paper(){
        
    }
    
    @IBAction func Scissors(){
        
    }
    
    func CPUPlay()->String{
        //var number = GKRandomSource.sharedRandom().nextIntWithUpperBound(2)
        return hand[GKRandomSource.sharedRandom().nextIntWithUpperBound(2)]
        
    }
    
    func match(you:String, cpu:String)->String{
        let x = (you, cpu)
        switch x {
        case ("rock", "rock"), ("paper", "paper"), ("scissors", "scissors"):
            return "It's a tie."
        case ("rock", "paper"), ("paper", "rock"), ("scissors", "paper"):
            return "You win."
        case ("paper", "scissors"), ("rock", "paper"), ("scissors", "rock"):
            return "CPU win."
        default:
            return "Something went wrong. Redo."
        }
    }
}

