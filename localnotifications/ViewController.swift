//
//  ViewController.swift
//  localnotifications
//
//  Created by Sriram Prasad on 02/10/18.
//  Copyright © 2018 FullStackNet. All rights reserved.
//

import UIKit
import UserNotifications
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        UNUserNotificationCenter.current().requestAuthorization(options: [.sound,.alert,.badge], completionHandler: { didAllow,error  in })
    
    }

    @IBAction func notification(_ sender: UIButton) {
        
        let content = UNMutableNotificationContent()
            content.title = "there are 5 second to go"
            content.subtitle = "bfshfbeksjhfbks"
            content.body = "there are 5 second to go up"
            content.badge = 1
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        let request = UNNotificationRequest(identifier: "sting", content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
        
    }
    
}

