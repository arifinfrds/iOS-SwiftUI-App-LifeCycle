//
//  SwiftUIAppLifeCycleApp.swift
//  SwiftUIAppLifeCycle
//
//  Created by Arifin Firdaus on 12/09/21.
//

import SwiftUI

@main
struct SwiftUIAppLifeCycleApp: App {
    
    init() {
        configureFirebaseSDK()
    }
    
    private func configureFirebaseSDK() {
        print("Configure Firebase...")
        print("Firebase Configured.")
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
