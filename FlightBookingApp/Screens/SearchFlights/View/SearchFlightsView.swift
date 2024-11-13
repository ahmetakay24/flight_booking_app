//
//  SearchFlightsView.swift
//  FlightBookingApp
//
//  Created by TheHustleMachine on 13.11.2024.
//

import SwiftUI

struct SearchFlightsView: View {

    @Environment(\.appTheme) var theme: AppTheme

    var body: some View {
        NavigationStack {
            ScrollView {
                ZStack {
                    
                    Image("big_global_map")
                        .resizable()
                        .aspectRatio(contentMode: .fill)

                        //Search Flights yazısının konumunu ayarla
                        Text("Search Flights")
                            .font(theme.fonts.titleBigger)
                            .lineLimit(1)
                            .minimumScaleFactor(0.5)
                            .foregroundStyle(.white)
                            .padding(.bottom,sizeCalculator(theme.deviceSize.height, 8.99))
                    
                    VStack {
                        
                    }.frame(width: sizeCalculator(theme.deviceSize.width, 75.46),height: sizeCalculator(theme.deviceSize.height, 23.64))
                        .background(.white)
                    
                }.frame(width: .infinity, height: .infinity).background(theme.blueColors.bc80)
            }
        }.frame(width: .infinity, height: .infinity)
        .background(theme.blueColors.bc80)
    }
}

#Preview {
    SearchFlightsView()
}
