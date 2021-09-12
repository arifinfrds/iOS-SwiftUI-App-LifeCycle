//
//  AppDelegate.swift
//  SwiftUIAppLifeCycle
//
//  Created by Arifin Firdaus on 12/09/21.
//

import UIKit

class AppDelegate: NSObject, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        print("AppDelegate - didFinishLaunchingWithOptions")
        
        return true
    }
    
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        
        let sceneConfiguration = UISceneConfiguration(
            name: "Scene Delegate",
            sessionRole: connectingSceneSession.role
        )
        
        sceneConfiguration.delegateClass = SceneDelegate.self
        
        return sceneConfiguration
        
    }
}
