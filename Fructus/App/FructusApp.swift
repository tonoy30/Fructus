//
//  FructusApp.swift
//  Fructus
//
//  Created by md tonoy akanda on 11/28/21.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnBordingView()
            } else {
                ContentView()
            }
        }
    }
}
