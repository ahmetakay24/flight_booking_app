//
//  AccountButtons.swift
//  FlightBookingApp
//
//  Created by TheHustleMachine on 22.10.2024.
//

import SwiftUI

struct AccountNavigateButton : View {
    
    @Environment(\.appTheme) var theme
    
    var buttonSymbol : String
    var buttonText : String
    var buttonFunction : () -> Void
    
    var body: some View {
        
        HStack(spacing: 0) {
            Image(buttonSymbol)
                .scaledToFit()
                .frame(width: sizeCalculator(theme.deviceSize.width, 5.03), height: sizeCalculator(theme.deviceSize.height, 2.32))
                .padding(.trailing, sizeCalculator(theme.deviceSize.width, 4.26))
            
            Text(buttonText)
                .font(theme.fonts.titleSmaller)
            
            Spacer()
            
            Button(action:buttonFunction) {
                Image(systemName: "chevron.right")
                    .scaledToFit()
                    .frame(width: sizeCalculator(theme.deviceSize.width, 2.18), height: sizeCalculator(theme.deviceSize.height, 1.72))
                    .foregroundColor(.gray)
            }
        }
        
    }
}

struct AccountQuickLoginButton : View {
    
    @Environment(\.appTheme) var theme
    @Binding var isOpenQuickLogin : Bool
    
    var buttonSymbol : String
    var buttonText : String
    var buttonFunction : () -> Void
    
    var body: some View {
        
        HStack(spacing: 0) {
            Image("quick_login")
                .scaledToFit()
                .frame(width: sizeCalculator(theme.deviceSize.width, 5.03), height: sizeCalculator(theme.deviceSize.height, 2.32))
                .padding(.trailing, sizeCalculator(theme.deviceSize.width, 4.26))
            
            Text("Quick Login")
                .font(theme.fonts.titleSmaller)
            
            Spacer()
            
            Button(action: {}) {
                Toggle("", isOn: $isOpenQuickLogin)
                    .toggleStyle(SwitchToggleStyle(tint: theme.blueColors.bc80))
            }
            
        }
        
    }
}
