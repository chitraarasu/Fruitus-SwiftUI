//
//  FruitusApp.swift
//  Fruitus
//
//  Created by kirshi on 4/12/23.
//

import SwiftUI

@main
struct FruitusApp: App {
    
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
