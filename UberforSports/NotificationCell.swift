//
//  NotificationCell.swift
//  UberforSports
//
//  Created by Shreshta Manu on 10/23/15.
//  Copyright © 2015 Shreshta. All rights reserved.
//

import UIKit

class NotificationCell: UITableViewCell {

    
   
    @IBOutlet weak var displaypic: UIImageView!
    
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var desc: UILabel!
    
    
    @IBOutlet weak var date: UILabel!
    
    @IBOutlet weak var time: UILabel!
    
    @IBOutlet weak var level: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setcell(user : User)
    {
        displaypic.image = UIImage(named: user.image)
        
        name.text = user.name
        
        date.text = user.date
        
        time.text = user.time
        
        desc.text = user.desc
        
        level.text = user.level
        
    }

}
