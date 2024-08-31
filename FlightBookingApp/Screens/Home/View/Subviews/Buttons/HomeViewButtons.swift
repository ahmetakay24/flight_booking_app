//
//  HomeViewButtons.swift
//  FlightBookingApp
//
//  Created by TheHustleMachine on 31.08.2024.
//

import SwiftUI

struct OnWayOrRoundTripButton: View {
    
    @Environment(\.appTheme) var theme
    
    @Binding var isOneWayMarked : Bool
    @Binding var isRoundTripMarked : Bool
    
    var body: some View {
        HStack(spacing: 0) {
            Button(action: {
                if isOneWayMarked == false {
                    isOneWayMarked = true
                    isRoundTripMarked = false
                }
            }) {
                Image(systemName: isOneWayMarked ? "circle.inset.filled" : "circle")
                    .frame(width: sizeCalculator(theme.deviceSize.width, 5.33), height: sizeCalculator(theme.deviceSize.height, 2.46))
                    .scaledToFill()

                Text("One-way")
                    .font(theme.fonts.bodyBigger).foregroundStyle(.black)
                    .minimumScaleFactor(0.5)
                    .lineLimit(1)

            }.frame(width: sizeCalculator(theme.deviceSize.width, 26.93), height: sizeCalculator(theme.deviceSize.height, 2.46), alignment: .leading)

            Button(action: {
                if isRoundTripMarked == false {
                    isRoundTripMarked = true
                    isOneWayMarked = false
                }
            }) {
                Image(systemName: isRoundTripMarked ? "circle.inset.filled" : "circle")
                    .frame(width: sizeCalculator(theme.deviceSize.width, 5.33), height: sizeCalculator(theme.deviceSize.height, 2.46))
                    .scaledToFill()

                Text("Round-trip")
                    .font(theme.fonts.bodyBigger).foregroundStyle(.black)
                    .minimumScaleFactor(0.5)
                    .lineLimit(1)

            }.frame(width: sizeCalculator(theme.deviceSize.width, 23.99), height: sizeCalculator(theme.deviceSize.height, 2.46), alignment: .leading)

        }.frame(width: sizeCalculator(theme.deviceSize.width, 82.93), height: sizeCalculator(theme.deviceSize.height, 2.46), alignment: .leading)
            .padding(.top, sizeCalculator(theme.deviceSize.height, 3.94))
    }
}
