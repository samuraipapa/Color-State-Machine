
//
//  ViewController.swift
//  Color State Machine
//
//  Created by yodyodsmall on 2/12/16.
//  Copyright © 2016 yg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var button7: UIButton!

    @IBAction func button7IsPressed(sender: UIButton) {
    }
    
    @IBAction func dayNightSwithed(sender: UISwitch) {
        if(sender.on){
            print("day light mode is on")
            turnEverythingToDay()
        } else {
            print("day light mode is off")
                turnEverythingToNight()
        }
    }
    
    func turnEverythingToDay(){
    view.backgroundColor = UIColor.yellowColor()
    myLabel.textColor = UIColor(red: 150/255, green: 0.5, blue: 1, alpha: 1)
    myLabel.backgroundColor = UIColor.whiteColor()
    button7.backgroundColor = UIColor.blackColor()
    button7.titleLabel?.textColor = UIColor.whiteColor()
    }
    
    func turnEverythingToNight(){
        view.backgroundColor = UIColor.brownColor()
        myLabel.textColor = UIColor(red: 0, green: 0.75, blue: 0, alpha: 1)
        myLabel.backgroundColor = UIColor.blackColor()
        button7.backgroundColor = UIColor.whiteColor()
        button7.titleLabel?.textColor = UIColor.blackColor()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
         myLabel.text = "100,000,000"
        turnEverythingToDay()
        
//        var ColorOfButton7 =  view.backgroundColor
//    
//        print("\(ColorOfButton7)")
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

