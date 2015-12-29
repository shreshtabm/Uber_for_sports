//
//  Class.swift
//  UberforSports
//
//  Created by Shreshta Manu on 10/23/15.
//  Copyright © 2015 Shreshta. All rights reserved.
//

import Foundation

public class User {
    
    var name = ""
    
    var image  = "blank"
    
    var date  = ""
    
    var time  = ""

    var desc = ""
    
    var level = ""
    init(name : String, image : String , date : String, time : String, desc : String, level : String )

{
    self.name = name
    
    self.image = image
    
    self.date = date
    
    self.time = time
    
    self.desc = desc
    
    self.level = level
}

}