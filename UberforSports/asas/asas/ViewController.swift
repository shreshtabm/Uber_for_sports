//
//  ViewController.swift
//  asas
//
//  Created by Shreshta Manu on 11/1/15.
//  Copyright © 2015 Shreshta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var segd: UISegmentedControl!
    
   
    @IBAction func seg(sender: UISegmentedControl) {
        
        switch segd.selectedSegmentIndex
        {
        case 0 : print ("Hello1")
            
        case 1 : print("Hello2")
            
        default : print ("Fuck off")
        }
    }

}

