//
//  Notification.swift
//  UberforSports
//
//  Created by Shreshta Manu on 10/23/15.
//  Copyright © 2015 Shreshta. All rights reserved.
//

import UIKit


public var users : [User] = [User]()


class Notification: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var Arr = ["one","two","three","Four","Five"]
    
    @IBOutlet weak var Nottable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        users.removeAll()
        
        let user1 : User = User(name: "Hazard", image: "eden", date: "Oct 21", time: "3:00 - 6:00 PM",desc : "Soccer", level: "Practice")
        let user2 : User = User(name: "Messi", image: "messi", date: "Oct 22", time: "1:00 - 2:00 PM",desc : "Tennis", level: "Competition")
        let user3 : User = User(name: "Ronaldo", image: "ronaldo", date: "Oct 22", time: "5:00 - 7:00 PM",desc : "Basketball", level: "Practice")
        let user4 : User = User(name: "Thiago", image: "silva", date: "Oct 23", time: "12:00 - 4:00 PM", desc : "Soccer", level: "Casual game")
        
        users.append(user1)
        users.append(user2)
        users.append(user3)
        users.append(user4)
        
        
        let sample1 : String = "Hello mother fucekrs"
        let sample2 : String = "Hello mother fucekrs"
        
        
        
        if let val: Bool = sample1 == sample2
        {
            print(val)
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell : NotificationCell = tableView.dequeueReusableCellWithIdentifier("Notification", forIndexPath: indexPath) as! NotificationCell
        
        let arr = users[indexPath.row]
        
        cell.setcell(arr)
        
        return cell
        
    }
    
    
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        
       // Nottable.reloadData()
        
        selected = users[indexPath.row]
        
        print(indexPath.row)
       

        
        
    }


}
