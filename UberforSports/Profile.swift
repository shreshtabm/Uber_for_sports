//
//  Profile.swift
//  UberforSports
//
//  Created by Shreshta Manu on 10/23/15.
//  Copyright © 2015 Shreshta. All rights reserved.
//

import UIKit

public var selected : User = User(name: "Hazard", image: "eden", date: "", time: "", desc: "", level: "")

class Profile: UIViewController {
    
    @IBOutlet weak var Name: UILabel!
    
    @IBOutlet weak var displaypic: UIImageView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.reloadInputViews()
        
        let new = random()
        
        let num = new%4
        
        Name.text = selected.name
        
        displaypic.image = UIImage(named: selected.image)
        
        view.reloadInputViews()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
