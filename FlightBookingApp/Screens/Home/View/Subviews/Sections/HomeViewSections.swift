//
//  HomeViewSections.swift
//  FlightBookingApp
//
//  Created by TheHustleMachine on 31.08.2024.
//

import SwiftUI

struct HomeScreenHeader: View {
    @Environment(\.appTheme) var theme

    var body: some View {
        ZStack(alignment: .topLeading) {
            Image("global_map")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: theme.deviceSize.width, height: sizeCalculator(theme.deviceSize.height, 22.16), alignment: .top)

            HStack {
                Text("Search Flights")
                    .font(theme.fonts.titleBigger)
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
                    .foregroundStyle(.white)

            }.frame(width: theme.deviceSize.width, height: sizeCalculator(theme.deviceSize.height, 5.91))

            Text("Discover")
                .font(theme.fonts.bigTextMedium)
                .lineLimit(1)
                .minimumScaleFactor(0.5)
                .foregroundStyle(.white)
                .padding(.top, sizeCalculator(theme.deviceSize.height, 9.85))
                .padding(.leading, sizeCalculator(theme.deviceSize.width, 8.53))

            Text("a new world")
                .font(theme.fonts.bigTextMedium)
                .lineLimit(1)
                .minimumScaleFactor(0.5)
                .foregroundStyle(.white)
                .padding(.top, sizeCalculator(theme.deviceSize.height, 14.77))
                .padding(.leading, sizeCalculator(theme.deviceSize.width, 8.53))

        }.frame(width: theme.deviceSize.width, height: sizeCalculator(theme.deviceSize.height, 22.16), alignment: .top)
    }
}

struct HomeViewTextFieldLongHeader : View {
    @Environment(\.appTheme) var theme
    
    let text : String
    
    init(text: String) {
        self.text = text
    }
    
    var body: some View {
        HStack {
            Text(text)
                .font(theme.fonts.bodyBigger)
                .foregroundStyle(.black)
                .minimumScaleFactor(0.5)
                .lineLimit(1)

        }.frame(width: sizeCalculator(theme.deviceSize.width, 82.93), alignment: .leading)
            .padding(.top, sizeCalculator(theme.deviceSize.height, 2.95))
            .padding(.bottom, sizeCalculator(theme.deviceSize.height, 0.86))
    }
}
