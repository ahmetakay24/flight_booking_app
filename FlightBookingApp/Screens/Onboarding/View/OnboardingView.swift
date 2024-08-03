//
//  OnboardingView.swift
//  FlightBookingApp
//
//  Created by TheHustleMachine on 1.08.2024.
//

import SwiftUI

struct OnboardingView: View {
    @Environment(\.appTheme) var theme

    var body: some View {
        VStack(spacing: 0) {
            Image("hero")
                .resizable()
                .frame(width: sizeCalculator(theme.deviceSize.width, 91.46), height: sizeCalculator(theme.deviceSize.height, 54.58))

                .padding(.bottom, sizeCalculator(theme.deviceSize.height, 2.83))

            HStack(alignment: .top, spacing: sizeCalculator(theme.deviceSize.width, 2.13)) {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 61.0, height: 6.0)
                    .background(Color(red: 0.0, green: 100.0 / 255.0, blue: 210.0 / 255.0))
                    .cornerRadius(14.0)
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 21.0, height: 6.0)
                    .background(Color(red: 225.0 / 255.0, green: 240.0 / 255.0, blue: 237.0 / 255.0))
                    .cornerRadius(14.0)
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 21.0, height: 6.0)
                    .background(Color(red: 225.0 / 255.0, green: 240.0 / 255.0, blue: 237.0 / 255.0))
                    .cornerRadius(14.0)
            }
            .frame(width: sizeCalculator(theme.deviceSize.width, 31.73), height: sizeCalculator(theme.deviceSize.height, 0.73))
            .padding(.bottom, sizeCalculator(theme.deviceSize.height, 2.95))

            VStack {
                Text("Explore")
                    .font(theme.fonts.bigTextBigger)
                    .frame(width: sizeCalculator(theme.deviceSize.width, 91.46), height: sizeCalculator(theme.deviceSize.height, 5.91), alignment: .leading)
                    .minimumScaleFactor(0.5)
                    .lineLimit(1)
                Text("The Beautiful")
                    .font(theme.fonts.bigTextBigger)
                    .frame(width: sizeCalculator(theme.deviceSize.width, 91.46), height: sizeCalculator(theme.deviceSize.height, 5.91), alignment: .leading)
                    .minimumScaleFactor(0.5)
                    .lineLimit(1)
                Text("World!")
                    .font(theme.fonts.bigTextBigger)
                    .frame(width: sizeCalculator(theme.deviceSize.width, 91.46), height: sizeCalculator(theme.deviceSize.height, 5.91), alignment: .leading)
                    .minimumScaleFactor(0.5)
                    .lineLimit(1)
            }.frame(width: sizeCalculator(theme.deviceSize.width, 91.46), height: sizeCalculator(theme.deviceSize.height, 17.73), alignment: .leading)

            HStack(spacing: sizeCalculator(theme.deviceSize.width, 2.13)) {
                
                Button(action: { print("") }) {
                    Text("Skip")
                        .font(theme.fonts.titleSmaller).minimumScaleFactor(0.5)
                        .lineLimit(1)
                }.frame(width: sizeCalculator(theme.deviceSize.width, 44.66), height: sizeCalculator(theme.deviceSize.height, 5.91))
                
                Button("Next $", action: {
                    print("")
                }).frame(width: sizeCalculator(theme.deviceSize.width, 44.66), height: sizeCalculator(theme.deviceSize.height, 5.91))
                    .foregroundColor(.white)
                    .background(theme.blueColors.bc80)
                    .cornerRadius(10)
                
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
            .padding(.top, sizeCalculator(theme.deviceSize.height, 3.94))
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView().environment(\.appTheme, AppTheme())
    }
}
