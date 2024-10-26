//
//  AccountView.swift
//  FlightBookingApp
//
//  Created by TheHustleMachine on 14.10.2024.
//

import SwiftUI

struct AccountView: View {
    @Environment(\.appTheme) var theme
    
    @State var isOpenQuickLogin: Bool = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 0) {
                    
                    AccountAppBar()
                    
                    VStack(spacing: 0) {
                        
                        AccountNavigateButton(buttonSymbol: "Navigation", buttonText: "New Order", buttonFunction: {})
                        .padding(.vertical, sizeCalculator(theme.deviceSize.height, 2.95))
                        .padding(.top, sizeCalculator(theme.deviceSize.height, 1.97))
                        
                        Divider()
                        
                        AccountNavigateButton(buttonSymbol: "voucher", buttonText: "My Voucher", buttonFunction: {})
                        .padding(.vertical, sizeCalculator(theme.deviceSize.height, 2.95))
                        
                        Divider()
                        
                        AccountNavigateButton(buttonSymbol: "payment", buttonText: "Payment Methods", buttonFunction: {})
                        .padding(.vertical, sizeCalculator(theme.deviceSize.height, 2.95))
                        
                        Divider()
                        
                        AccountNavigateButton(buttonSymbol: "add_friend", buttonText: "Invite Friends", buttonFunction: {})
                        .padding(.vertical, sizeCalculator(theme.deviceSize.height, 2.95))
                        
                        Divider()
                        
                        AccountQuickLoginButton(isOpenQuickLogin: $isOpenQuickLogin, buttonSymbol: "quick_login", buttonText: "Quick Login", buttonFunction: {})
                        .padding(.vertical, sizeCalculator(theme.deviceSize.height, 2.95))
                        
                    }.padding(.horizontal, 24)
                    
                    theme.otherColors.lightGray.frame(width: .infinity, height: sizeCalculator(theme.deviceSize.height, 1.97))
                    
                    VStack(spacing: 0) {
                        
                        AccountNavigateButton(buttonSymbol: "question", buttonText: "Help Center", buttonFunction: {})
                        .padding(.vertical, sizeCalculator(theme.deviceSize.height, 2.95))
                        
                        Divider()
                        
                        AccountNavigateButton(buttonSymbol: "settings", buttonText: "Settings", buttonFunction: {})
                        .padding(.vertical, sizeCalculator(theme.deviceSize.height, 2.95))
                        
                    }.padding(.horizontal, 24)
                    
                    theme.otherColors.lightGray.frame(width: .infinity, height: sizeCalculator(theme.deviceSize.height, 1.97))
                    
                    AccountNavigateButton(buttonSymbol: "log_out", buttonText: "Log Out", buttonFunction: {})
                    .padding(.vertical, sizeCalculator(theme.deviceSize.height, 2.95)).padding(.horizontal, 24)
                    
                    theme.otherColors.lightGray.frame(width: .infinity, height: sizeCalculator(theme.deviceSize.height, 2.95))
                    
                }

            }.frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.top)
        }
    }
}

#Preview {
    AccountView()
}
