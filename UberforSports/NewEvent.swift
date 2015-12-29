//
//  NewEvent.swift
//  UberforSports
//
//  Created by Shreshta Manu on 10/22/15.
//  Copyright © 2015 Shreshta. All rights reserved.
//

import UIKit

class NewEvent: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {

    @IBOutlet weak var sport: UIPickerView!
    
    @IBOutlet weak var radius: UILabel!
    
    var Sports = ["Tennis","Badminton","Soccer","Snooker","Basketball"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Sports[row]
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Sports.count
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    @IBAction func Radius(sender: UIStepper) {
        
        radius.text = " " + sender.value.description + " Miles"
    }
    
    @IBAction func Submit(sender: AnyObject) {
        
        
        let alert = UIAlertController(title: "Success", message: "You have created the event", preferredStyle: UIAlertControllerStyle.Alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
    
        self.presentViewController(alert, animated: true, completion: nil)
    
    }
    
    

}
