//
//  LoginView.swift
//  FlightBookingApp
//
//  Created by TheHustleMachine on 5.08.2024.
//

import SwiftUI

struct SignInView: View {
    @Environment(\.appTheme) var theme

    @State var emailField: String = ""
    @State var passwordField: String = ""

    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            Button(action: {}) {
                Image(systemName: "arrow.left")
                    .resizable()
                    .frame(width: sizeCalculator(theme.deviceSize.width, 4.15), height: sizeCalculator(theme.deviceSize.height, 1.87))
                    .foregroundStyle(theme.otherColors.blackest)
            }
            .padding(.top, sizeCalculator(theme.deviceSize.height, 3.87))
            .padding(.trailing, sizeCalculator(theme.deviceSize.width, 80.79))
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
                .padding(.bottom, sizeCalculator(theme.deviceSize.height, 4.67))

            Text("EMAIL")
                .foregroundStyle(Color(red: 128 / 255, green: 128 / 255, blue: 128 / 255))
                .font(theme.fonts.bodySmaller)
                .frame(width: sizeCalculator(theme.deviceSize.width, 87.19), height: sizeCalculator(theme.deviceSize.height, 1.84), alignment: .leading)
                .minimumScaleFactor(0.5)
                .lineLimit(1)
                .padding(.bottom, sizeCalculator(theme.deviceSize.height, 0.98))

            TextField(text: $emailField) {
                Text("Enter Your Email")
                    .font(theme.fonts.bodyBigger)
                    .foregroundStyle(theme.otherColors.blackest)
                    .minimumScaleFactor(0.5)
                    .lineLimit(1)
            }.frame(width: sizeCalculator(theme.deviceSize.width, 87.19), height: sizeCalculator(theme.deviceSize.height, 3.94))
                .padding(.bottom, sizeCalculator(theme.deviceSize.height, 0.92))

            Divider()
                .frame(width: sizeCalculator(theme.deviceSize.width, 87.19))
                .padding(.bottom, sizeCalculator(theme.deviceSize.height, 2.89))

            Text("PASSWORD")
                .foregroundStyle(Color(red: 128 / 255, green: 128 / 255, blue: 128 / 255))
                .font(theme.fonts.bodySmaller)
                .frame(width: sizeCalculator(theme.deviceSize.width, 87.19), height: sizeCalculator(theme.deviceSize.height, 1.84), alignment: .leading)
                .minimumScaleFactor(0.5)
                .lineLimit(1)
                .padding(.bottom, sizeCalculator(theme.deviceSize.height, 0.98))

            TextField(text: $emailField) {
                Text("Enter Your Password")
                    .font(theme.fonts.bodyBigger)
                    .foregroundStyle(theme.otherColors.blackest)
                    .minimumScaleFactor(0.5)
                    .lineLimit(1)
            }.frame(width: sizeCalculator(theme.deviceSize.width, 87.19), height: sizeCalculator(theme.deviceSize.height, 3.94))
                .padding(.bottom, sizeCalculator(theme.deviceSize.height, 0.92))

            Divider()
                .frame(width: sizeCalculator(theme.deviceSize.width, 87.19))
                .padding(.bottom, sizeCalculator(theme.deviceSize.height, 2.89))

            Button(action: {}) {
                Text("Sign in")
                Image(systemName: "checkmark.circle.fill")
            }
            .frame(width: sizeCalculator(theme.deviceSize.width, 87.19),height: sizeCalculator(theme.deviceSize.height, 5.91))
            .background(theme.blueColors.bc80)
            .foregroundStyle(.white)
            .cornerRadius(10)
            .padding(.bottom,sizeCalculator(theme.deviceSize.height, 2.95))
            
            Text("Or Sign In With")
                .foregroundStyle(Color(red: 128 / 255, green: 128 / 255, blue: 128 / 255))
                .font(theme.fonts.bodyBigger)
                .frame(width: sizeCalculator(theme.deviceSize.width, 87.19), height: sizeCalculator(theme.deviceSize.height, 2.09), alignment: .center)
                .minimumScaleFactor(0.5)
                .lineLimit(1)
                .padding(.bottom, sizeCalculator(theme.deviceSize.height, 2.95))

        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView().environment(\.appTheme, AppTheme())
    }
}
