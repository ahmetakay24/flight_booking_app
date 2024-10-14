//
//  HomeTextFields.swift
//  FlightBookingApp
//
//  Created by TheHustleMachine on 7.10.2024.
//

import SwiftUI

struct HomeSelectAirportTextField : View {
    @Environment(\.appTheme) var theme
    @Binding var textField: String
    var icon : String
    
    var body: some View {
        HStack(spacing: 0) {
            Image(icon)
                .resizable()
                .frame(width: sizeCalculator(theme.deviceSize.width, 5.33), height: sizeCalculator(theme.deviceSize.height, 2.46))
                .padding(.leading, sizeCalculator(theme.deviceSize.width, 4.79))

            // AutoComplete will be added
            TextField("Country, city or airport", text: $textField)
                .padding(.leading, sizeCalculator(theme.deviceSize.width, 4.26))

        }.frame(width: sizeCalculator(theme.deviceSize.width, 82.93), height: sizeCalculator(theme.deviceSize.height, 5.91), alignment: .leading)
            .background(Color(red: 230/255, green: 232/255, blue: 233/255))
            .cornerRadius(15)
    }
}

struct HomeSelectNumberOfPassenger : View {
    
    @Environment(\.appTheme) var theme
    @Binding var selectedPassengerNumber: String
    
    var body: some View {
        HStack(spacing: 0) {
            Image("passenger")
                .resizable()
                .frame(width: sizeCalculator(theme.deviceSize.width, 5.33), height: sizeCalculator(theme.deviceSize.height, 2.46))
                .padding(.leading, sizeCalculator(theme.deviceSize.width, 4.79))

            TextField("Country, city or airport", text: $selectedPassengerNumber)
                .padding(.leading, sizeCalculator(theme.deviceSize.width, 4.26))

        }.frame(width: sizeCalculator(theme.deviceSize.width, 82.93), height: sizeCalculator(theme.deviceSize.height, 5.91), alignment: .leading)
            .background(Color(red: 230/255, green: 232/255, blue: 233/255))
            .cornerRadius(15)
    }
}
