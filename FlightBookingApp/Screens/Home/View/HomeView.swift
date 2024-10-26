//
//  HomeView.swift
//  FlightBookingApp
//
//  Created by TheHustleMachine on 9.08.2024.
//

import SwiftUI

struct HomeView: View {
    @State private var selectedTab: Int = 0
    @Environment(\.appTheme) var theme: AppTheme
    
    var body: some View {
        VStack(spacing: 0) {
            // Main Content
            if selectedTab == 0 {
                HomeScreen()
            } else if selectedTab == 1 {
                TransactionView()
            } else {
                AccountView()
            }
            
            VStack(spacing: 8) {
                
                HStack(spacing: 0) {
                    
                    Spacer()
                    
                    VStack(spacing: 4) {
                        Button(action: { selectedTab = 0 }) {
                            Image(systemName: selectedTab == 0 ? "house.fill" : "house")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 24, height: 24)
                                .foregroundColor(selectedTab == 0 ? theme.blueColors.bc80 : .gray)
                        }
                        Text("Home")
                            .font(theme.fonts.bodySmaller)
                            .foregroundColor(selectedTab == 0 ? theme.blueColors.bc80 : .gray)
                    }
                    
                    Spacer()
                    
                    // Transaction Tab
                    VStack(spacing: 4) {
                        Button(action: { selectedTab = 1 }) {
                            Image(systemName: selectedTab == 1 ? "ticket.fill" : "ticket")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 24, height: 24)
                                .foregroundColor(selectedTab == 1 ? theme.blueColors.bc80 : .gray)
                        }
                        Text("Transaction")
                            .font(theme.fonts.bodySmaller)
                            .foregroundColor(selectedTab == 1 ? theme.blueColors.bc80 : .gray)
                    }
                    
                    Spacer() // Tab'lar arası boşluk
                    
                    VStack(spacing: 4) {
                        Button(action: { selectedTab = 2 }) {
                            Image(systemName: selectedTab == 2 ? "person.fill" : "person")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 24, height: 24)
                                .foregroundColor(selectedTab == 2 ? theme.blueColors.bc80 : .gray)
                        }
                        Text("Account")
                            .font(theme.fonts.bodySmaller)
                            .foregroundColor(selectedTab == 2 ? theme.blueColors.bc80 : .gray)
                    }
                    
                    Spacer()
                }
            }
            .frame(height: sizeCalculator(theme.deviceSize.height, 9.1),alignment: .center)
            .background(Color.white)
            
        }.edgesIgnoringSafeArea(.top)
    }
}

struct HomeScreen: View {
    @Environment(\.appTheme) var theme

    var body: some View {
        NavigationStack {
            VStack(alignment: .center, spacing: 0) {
                HomeScreenHeader()

                HomeScreenBookingContainer()

            }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
                .background(theme.blueColors.bc80)
        }
    }
}

#Preview {
    HomeView().environment(\.appTheme, AppTheme())
}

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
                .padding(.top, sizeCalculator(theme.deviceSize.height, 1.97))

            HomeSelectNumberOfPassenger(selectedPassengerNumber: $selectedPassengerNumber)

            HomeSearchFlightsButton()
                .padding(.top, sizeCalculator(theme.deviceSize.height, 2.95))

        }.frame(width: theme.deviceSize.width, height: sizeCalculator(theme.deviceSize.height, 62.68), alignment: .top)
            .background(.white)
            .clipShape(
                .rect(
                    topLeadingRadius: 30,
                    topTrailingRadius: 30
                )
            )
    }
}
