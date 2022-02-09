//
//  ThirdViewController.swift
//  iOSTestApp
//
//  Created by Joe Kolker on 1/8/20.
//  Copyright © 2020 Joe Kolker. All rights reserved.
//

import Pendo
import UIKit
import FirebaseUI

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

// !!PENDO TRACK EVENTS!! //
// Anything containing `PendoManager.shared()...` is a track event that gets passed. To disable a track event use two forward slashes in front of the `PendoManager.shared()` method //
    
    @IBAction func eventThree(_ sender: Any) {
        PendoManager.shared().track("eventThreeMobile", properties: nil)
    }
    
    @IBAction func eventFour(_ sender: Any) {
        PendoManager.shared().track("eventFourMobile", properties: nil)
    }
    
    @IBAction func stateChangedBackClick(_ sender: Any) {
        performSegue(withIdentifier: "stateChangeBackSegue", sender: self)
        PendoManager.shared().track("stateChangeBackSegue", properties: ["startingViewController":"Third", "landingViewController":"Second"])

    }
    
    @IBAction func logoutThirdView(_ sender: Any) {
        performSegue(withIdentifier: "logoutThirdViewSegue", sender: self)
        PendoManager.shared().track("logoutTwo", properties: ["startingViewController":"Third"])
    }
    
}
