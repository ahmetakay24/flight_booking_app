//
//  FlightBookingAppApp.swift
//  FlightBookingApp
//
//  Created by TheHustleMachine on 31.07.2024.
//

import SwiftUI

@main
struct FlightBookingAppApp: App {
    var body: some Scene {
        WindowGroup {
            //OnboardingView().environment(\.appTheme, AppTheme())
            //SignInView().environment(\.appTheme, AppTheme())
            HomeView().environment(\.appTheme, AppTheme())
        }
    }
}
