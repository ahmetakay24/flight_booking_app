//
//  AccountSections.swift
//  FlightBookingApp
//
//  Created by TheHustleMachine on 22.10.2024.
//

import SwiftUI

struct AccountAppBar : View {
    
    @Environment(\.appTheme) var theme
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0) {
            
            Text("My Profile")
                .font(theme.fonts.bigTextSmaller)
                .minimumScaleFactor(0.5)
                .foregroundStyle(.white)
                .padding(.top, sizeCalculator(theme.deviceSize.height, 6))
                .padding(.leading, sizeCalculator(theme.deviceSize.width, 4.26))
            
            HStack {
                Image("avatar")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: sizeCalculator(theme.deviceSize.width, 21.33), height: sizeCalculator(theme.deviceSize.height, 9.85))
                    .clipShape(Circle())
                    .padding(.trailing, sizeCalculator(theme.deviceSize.width, 5.06))
                
                VStack(alignment: .leading, spacing: sizeCalculator(theme.deviceSize.height, 0.98)) {
                    Text("Ahmet Akay")
                        .font(theme.fonts.bigTextSmaller)
                        .foregroundStyle(.white)
                    
                    Text("\("ahmetakaybusiness@gmail.com")")
                        .font(theme.fonts.bodyBigger)
                        .foregroundStyle(.white)
                    
                    Text("+48 571 571 571")
                        .font(theme.fonts.bodyBigger)
                        .foregroundStyle(.white)
                        .padding(.bottom, sizeCalculator(theme.deviceSize.height, 0.98))
                }
                
                Spacer()
                
                VStack(alignment: .trailing) {
                    Button(action: {}) {
                        Image(systemName: "square.and.pencil")
                            .foregroundStyle(.white)
                            .frame(width: 24, height: 24)
                            
                    }.frame(alignment: .top)
                    
                    Spacer()
                    
                }.frame(height: sizeCalculator(theme.deviceSize.height, 9.11))
            }
            .padding(.horizontal, sizeCalculator(theme.deviceSize.width, 4.26))
            .padding(.top, sizeCalculator(theme.deviceSize.height, 2.95))
        }
        .frame(width: theme.deviceSize.width, height: sizeCalculator(theme.deviceSize.height, 27.70))
        .background(theme.blueColors.bc80)
        .clipShape(
            .rect(
                bottomLeadingRadius: 30,
                bottomTrailingRadius: 30
            )
        )
    }
    
}

