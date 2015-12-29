//
//  Sportspicker.swift
//  UberforSports
//
//  Created by Shreshta Manu on 10/22/15.
//  Copyright © 2015 Shreshta. All rights reserved.
//

import UIKit

class Sportspicker: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    
    
    @IBOutlet weak var sport: UIPickerView!
    
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

}
