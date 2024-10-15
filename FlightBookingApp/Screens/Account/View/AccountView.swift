//
//  AccountView.swift
//  FlightBookingApp
//
//  Created by TheHustleMachine on 14.10.2024.
//

import SwiftUI

struct AccountView: View {
 
    @Environment(\.appTheme) var theme
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                
                VStack(alignment: .leading, spacing: 0) {
                    
                    Text("My Profile")
                        .font(theme.fonts.bigTextSmaller)
                        .minimumScaleFactor(0.5)
                        .foregroundStyle(.white)
                        .padding(.top,sizeCalculator(theme.deviceSize.height, 2.95))
                        .padding(.leading,sizeCalculator(theme.deviceSize.width, 4.26))
                    
                    HStack() {
                        
                        Circle()
                            .foregroundStyle(.white)
                            .frame(width: sizeCalculator(theme.deviceSize.width, 21.33), height: sizeCalculator(theme.deviceSize.height, 9.85))
                            .padding(.trailing,sizeCalculator(theme.deviceSize.width, 5.06))
                        
                        VStack(alignment: .leading, spacing: 8) {
                            
                            Text("Ahmet Akay")
                                .font(theme.fonts.bigTextSmaller)
                                .foregroundStyle(.white)
                            
                            Text("ahmetakaybusiness@gmail.com")
                                .font(theme.fonts.bodyBigger)
                                .foregroundStyle(.white)
                            
                            Text("+48 571 571 571")
                                .font(theme.fonts.bodyBigger)
                                .foregroundStyle(.white)
                        }
                        
                        Spacer()
                        
                        Button(action: {}) {
                            Image(systemName: "pencil")
                                .foregroundStyle(.white)
                        }
                    }
                    .padding(.horizontal,sizeCalculator(theme.deviceSize.width, 4.26))
                    .padding(.top,sizeCalculator(theme.deviceSize.height, 2.95))
                    
                }
                .frame(width: theme.deviceSize.width, height: sizeCalculator(theme.deviceSize.height, 27.70))
                .background(theme.blueColors.bc80)
                .clipShape(
                    .rect(
                        bottomLeadingRadius: 30,
                        bottomTrailingRadius: 30
                    )
                )
                
                
                
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.top)
        }
    }
}

#Preview {
    AccountView()
}
