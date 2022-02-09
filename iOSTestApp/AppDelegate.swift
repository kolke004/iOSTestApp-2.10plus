//
//  AppDelegate.swift
//  iOSTestApp
//
//  Created by Joe Kolker on 1/8/20.
//  Copyright © 2020 Joe Kolker. All rights reserved.
//

import UIKit
import Firebase
import Pendo

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        FirebaseApp.configure()
        
// !!PENDO 2.10+ METHODS!! //
        let appKey = "{API KEY GOES HERE}"
        PendoManager.shared().setup(appKey)
        
        PendoManager.shared().startSession(
            nil,
            accountId: nil,
            visitorData: nil,
            accountData: nil
        )
// !!PENDO 2.10+ METHODS!! //
        
// !!DEPRECATED PENDO 2.9 and older methods!!//
        // PENDO // - Insert App Key Here (inside the double quotes)
//        let appKey = "appKey"
//        PendoManager.shared().initSDKWithoutVisitor(appKey)
//
//        let visitorId: String? = nil
//        let accountId: String? = nil
//        let visitorData: [String: Any]? = nil
//        let accountData: [String: Any]? = nil
// !!DEPRECATED PENDO 2.9 and older methods!! //
        
        return true
    }

// !WARNING! //
// PENDO - UNCOMMENT FUNCTION/OPEN-URL BELOW //
    func application(_ app: UIApplication,
    open url: URL,
    options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool
       {
           if url.scheme?.range(of: "pendo") != nil {
               PendoManager.shared().initWith(url)

               return true
           }
           // your code here...
           return true
       }

}
