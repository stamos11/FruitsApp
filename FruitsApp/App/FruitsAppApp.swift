//
//  FruitsAppApp.swift
//  FruitsApp
//
//  Created by stamoulis nikolaos on 26/6/24.
//

import SwiftUI

@main
struct FruitsAppApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
            
        }
    }
}
