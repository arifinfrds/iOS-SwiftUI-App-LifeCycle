//
//  SwiftUIAppLifeCycleApp.swift
//  SwiftUIAppLifeCycle
//
//  Created by Arifin Firdaus on 12/09/21.
//

import SwiftUI

@main
struct SwiftUIAppLifeCycleApp: App {
    
    @Environment(\.scenePhase) var scenePhase
    
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
        .onChange(of: scenePhase) { phase in
            switch phase {
            case .active:
                startMessagingService()
            case .inactive:
                unregisterMessagingService()
            case .background:
                startMessagingServiceInLowPriority()
            @unknown default:
                break
            }
        }
    }
    
    private func startMessagingService() {
        print("Starting messaging service ...")
        print("messaging started.")
    }
    
    private func unregisterMessagingService() {
        print("Unregistering messaging service ...")
        print("messaging unregistered.")
    }
    
    private func startMessagingServiceInLowPriority() {
        print("Starting messaging service with low priority ...")
        print("low priority messaging started.")
    }
}
