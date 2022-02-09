//
//  ViewController.swift
//  iOSTestApp
//
//  Created by Joe Kolker on 1/8/20.
//  Copyright © 2020 Joe Kolker. All rights reserved.
//

import UIKit
import FirebaseUI
import Pendo

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // Login Button Click action
    @IBAction func loginClicked(_ sender: Any) {
        
        //get default aut UI obj
        let authUI = FUIAuth.defaultAuthUI()
        
        guard authUI != nil else {
            //log error
            return
        }
        //set ourselves as delegate
        authUI?.delegate = self
        authUI?.providers = [FUIEmailAuth()]
        
        //get a reference to the auth UI view controller
        let authViewController = authUI!.authViewController()
        
        //show it
        present(authViewController, animated: true, completion: nil)
        
    }
    
    // Sign Up Button Click action
    @IBAction func signUpClicked(_ sender: Any) {
        
        //get default aut UI obj
        let authUI = FUIAuth.defaultAuthUI()
        
        guard authUI != nil else {
            //log error
            return
        }
        //set ourselves as delegate
        authUI?.delegate = self
        authUI?.providers = [FUIEmailAuth()]
        
        //get a reference to the auth UI view controller
        let authViewController = authUI!.authViewController()
        
        //show it
        present(authViewController, animated: true, completion: nil)
    }
    
}

//login/signup segue func to populate OOTB Firebase sign in page
extension ViewController: FUIAuthDelegate {
    func authUI(_ authUI: FUIAuth, didSignInWith authDataResult: AuthDataResult?, error: Error?) {
        //check if there was an error
        if error != nil {
            //log error
            return
        }
        
        //performs programatic segue to main landing page after Firebase has executed and login data
        performSegue(withIdentifier: "loginSegue", sender: self)
        performSegue(withIdentifier: "bypassSegue", sender: self)

// NOTES - This grabs the UID from FirebaseUI and sets your visitorID once identified along with other metaData passed from FirebaseUI //
        let visitorId = Auth.auth().currentUser?.uid
        let email = Auth.auth().currentUser?.email
        let isVerified = Auth.auth().currentUser?.isEmailVerified
        let displayName = Auth.auth().currentUser?.displayName

// CURRENT PENDO 2.10+ methods
        PendoManager.shared().startSession(
            visitorId,
            accountId: "TestMobile",
            visitorData: ["email": email, "isVerified": isVerified, "displayName": displayName] ,
            accountData:  ["mobileAccountData": "placeholder"]
// CURRENT PENDO 2.10+ methods
            
// !!DEPRECATED PENDO 2.9 and older methods!! //
//        PendoManager.shared().switchVisitor(visitorId,
//                                            accountId: "TestMobile",
//                                            visitorData: ["email": email, "isVerified": isVerified, "displayName": displayName] ,
//                                            accountData:  ["mobileAccountData": "placeholder"] )
// !!DEPRECATED PENDO 2.9 and older methods!! //

        )
    }

}

