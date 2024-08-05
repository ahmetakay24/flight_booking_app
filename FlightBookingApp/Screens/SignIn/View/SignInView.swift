//
//  LoginView.swift
//  FlightBookingApp
//
//  Created by TheHustleMachine on 5.08.2024.
//

import SwiftUI

struct SignInView: View {
    @Environment(\.appTheme) var theme

    var body: some View {
        VStack(alignment: .leading) {
            Button(action: {}) {
                Image(systemName: "arrow.left")
                    .resizable()
                    .frame(width: sizeCalculator(theme.deviceSize.width, 4.15), height: sizeCalculator(theme.deviceSize.height, 1.87))
                    .foregroundStyle(theme.otherColors.blackest)
            }
            .padding(.top, sizeCalculator(theme.deviceSize.height, 3.87))
            // claude sor
            // .padding(.trailing, sizeCalculator(theme.deviceSize.width, 80.79))
            .padding(.trailing, 37)
            .padding(.bottom, sizeCalculator(theme.deviceSize.height, 5.17))
            .frame(width: sizeCalculator(theme.deviceSize.width, 14.93), height: sizeCalculator(theme.deviceSize.height, 4.55))

            Text("Sign In")
                .font(theme.fonts.bigTitle)
                .frame(width: sizeCalculator(theme.deviceSize.width, 87.19), height: sizeCalculator(theme.deviceSize.height, 5.91), alignment: .leading)
                .minimumScaleFactor(0.5)
                .lineLimit(1)
                .padding(.bottom, sizeCalculator(theme.deviceSize.height, 1.97))

            Text("Start Your Journey with affordable price")
                .font(.system(size: 14))
                .foregroundStyle(Color(red: 128 / 255, green: 128 / 255, blue: 128 / 255))
                .frame(width: sizeCalculator(theme.deviceSize.width, 87.19), height: sizeCalculator(theme.deviceSize.height, 2.33), alignment: .leading)
                .minimumScaleFactor(0.5)
                .lineLimit(1)
                .padding(.bottom,sizeCalculator(theme.deviceSize.height, 4.67))
            
            Text("EMAIL")
            
            

        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView().environment(\.appTheme, AppTheme())
    }
}
