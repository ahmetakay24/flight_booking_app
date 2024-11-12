//
//  HomeViewSections.swift
//  FlightBookingApp
//
//  Created by TheHustleMachine on 31.08.2024.
//

import SwiftUI

struct HomeScreenBookingContainer: View {
    @Environment(\.appTheme) var theme

    @StateObject var homeViewModel = HomeViewModel()

    @State var isOneWayMarked: Bool = true
    @State var isRoundTripMarked: Bool = false

    @State var departureTextField: String = ""
    @State var arrivalTextField: String = ""

    @State var selectedArrivalDate: Date = .now
    @State var selectedDepartureDate: Date = .now

    @State var showingDepartureDatePicker: Bool = false
    @State var showingArrivalDatePicker: Bool = false

    @State var selectedPassengerNumber: String = ""

    @State var test1: String = ""
    @State var test2: String = ""

    //Küçük ekranlar için farklı bir formattedDate yap
    var formattedDate: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM d, yyyy"
        formatter.locale = Locale(identifier: "en_US")
        let formattedDeparture = formatter.string(from: selectedDepartureDate)
        return formattedDeparture
    }
    

    init() {
        homeViewModel.fetchDatas()
    }

    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            
            OnWayOrRoundTripButton(isOneWayMarked: $isOneWayMarked, isRoundTripMarked: $isRoundTripMarked)
                .padding(.top, sizeCalculator(theme.deviceSize.height, 3.94))

            HomeViewTextFieldLongHeader(text: "From").padding(.top, sizeCalculator(theme.deviceSize.height, 1.8))

            // Departure TextField
            HomeSelectAirportTextField(textField: $departureTextField, icon: "flight_takeoff")

            HomeChangeAirportButton()
                .padding(.vertical, sizeCalculator(theme.deviceSize.height, 0.98))

            // Arrival TextField
            HomeSelectAirportTextField(textField: $arrivalTextField, icon: "flight_landing")
                .padding(.bottom, sizeCalculator(theme.deviceSize.height, 1.97))

            HomeDeparuteAndArrivalTextFieldHeaders()
                .padding(.bottom, sizeCalculator(theme.deviceSize.height, 0.98))

            HomeDepartureAndArrivalDatePickers(formattedDate: formattedDate, selectedDepartureDate: $selectedDepartureDate, selectedArrivalDate: $selectedArrivalDate, showingDepartureDatePicker: $showingDepartureDatePicker, showingArrivalDatePicker: $showingArrivalDatePicker)

            HomeViewTextFieldLongHeader(text: "Travelers")
                .padding(.top, sizeCalculator(theme.deviceSize.height, 1.6))

            HomeSelectNumberOfPassenger(selectedPassengerNumber: $selectedPassengerNumber)

            HomeSearchFlightsButton()
                .padding(.top, sizeCalculator(theme.deviceSize.height, 2.95))

        }.frame(width: theme.deviceSize.width, height: .infinity, alignment: .top)
            .background(.white)
            
    }
}

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

        }.frame(width: theme.deviceSize.width, height: sizeCalculator(theme.deviceSize.height, 22.16), alignment: .top).background(theme.blueColors.bc80)
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
            .padding(.bottom, sizeCalculator(theme.deviceSize.height, 0.86))
    }
}

struct HomeDeparuteAndArrivalTextFieldHeaders : View {
    @Environment(\.appTheme) var theme
    var body: some View {
        HStack(spacing: 0) {
            Text("Departure date")
                .font(theme.fonts.bodyBigger)
                .foregroundStyle(.black)
                .minimumScaleFactor(0.5)
                .lineLimit(1)

            Spacer()

            Text("Arrival date")
                .font(theme.fonts.bodyBigger)
                .foregroundStyle(.black)
                .minimumScaleFactor(0.5)
                .lineLimit(1)

        }.frame(width: sizeCalculator(theme.deviceSize.width, 82.93), alignment: .bottomLeading)
    }
}

