//
//  HomeView.swift
//  FlightBookingApp
//
//  Created by TheHustleMachine on 9.08.2024.
//

import SwiftUI

struct HomeView: View {
    @Environment(\.appTheme) var theme

    @State var isOneWayMarked: Bool = true
    @State var isRoundTripMarked: Bool = false

    var body: some View {
        NavigationStack {
            VStack(alignment: .center, spacing: 0) {
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
                            .frame(width: sizeCalculator(theme.deviceSize.width, 78.66), height: sizeCalculator(theme.deviceSize.height, 2.95), alignment: .center)

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

                }.frame(width: .infinity, height: sizeCalculator(theme.deviceSize.height, 22.16), alignment: .top)

                VStack(alignment: .center, spacing: 0) {
                    
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
                                .frame(width: sizeCalculator(theme.deviceSize.width, 16.53), height: sizeCalculator(theme.deviceSize.height, 2.09))
                        }.frame(width: sizeCalculator(theme.deviceSize.width, 26.93),height: sizeCalculator(theme.deviceSize.height, 2.46))

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
                                .frame(width: sizeCalculator(theme.deviceSize.width, 16.53), height: sizeCalculator(theme.deviceSize.height, 2.09))
                        }.frame(width: sizeCalculator(theme.deviceSize.width, 23.99),height: sizeCalculator(theme.deviceSize.height, 2.46))

                    }.frame(width: sizeCalculator(theme.deviceSize.width, 82.93), height: sizeCalculator(theme.deviceSize.height, 2.46), alignment: .leading)
                        .padding(.top, sizeCalculator(theme.deviceSize.height, 3.94))
                    
                    //...
                    TextField("Placeholder", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/).frame(alignment: .center)

                }.frame(width: theme.deviceSize.width, height: sizeCalculator(theme.deviceSize.height, 62.68), alignment: .top)
                    .background(.white)
                    .clipShape(
                        .rect(
                            topLeadingRadius: 30,
                            topTrailingRadius: 30
                        )
                    )

            }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
                .background(theme.blueColors.bc80)
        }
    }
}

#Preview {
    HomeView().environment(\.appTheme, AppTheme())
}

/*
 ZStack(alignment : .top) {
     Image("global_map")
         .resizable()
         .aspectRatio(contentMode: .fill)
         .frame(width: theme.deviceSize.width, height: sizeCalculator(theme.deviceSize.height, 22.16),alignment: .top)

     VStack(alignment: .center, spacing: 0) {
         Text("Ahmet")
     }
     .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
 }
 .navigationBarTitleDisplayMode(.inline)
 .toolbar {
     ToolbarItem(placement: .principal) {
         Text("Search Flights")
             .font(theme.fonts.titleBigger)
             .foregroundColor(.white)
             .minimumScaleFactor(0.5)
             .lineLimit(1)
     }
 }
 .background(theme.blueColors.bc80)
 */

/* NavigationStack {
  ZStack(alignment: .center) {
      Image("global_map")
          .resizable()
          .aspectRatio(contentMode: .fill)
          .padding(.top,sizeCalculator(theme.deviceSize.height, 5.41))
          .frame(width: theme.deviceSize.width, height: sizeCalculator(theme.deviceSize.height, 22.16), alignment: .top)

      Text("Discover")
          .font(theme.fonts.bigTextMedium)
          .foregroundStyle(.white)
          .padding(.top,sizeCalculator(theme.deviceSize.height, 5.41))

  }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
      .ignoresSafeArea()
      .background(theme.blueColors.bc80)
      .navigationBarTitleDisplayMode(.inline)
                  .toolbar {
                      ToolbarItem(placement: .principal) {
                          Text("Search Flights")
                              .font(theme.fonts.titleBigger)
                              .foregroundColor(.white)
                              .minimumScaleFactor(0.5)
                              .lineLimit(1)
                      }
                  }
 } */
