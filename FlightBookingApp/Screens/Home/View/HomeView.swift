//
//  HomeView.swift
//  FlightBookingApp
//
//  Created by TheHustleMachine on 9.08.2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        HomeScreen()
    }
}

struct HomeScreen: View {
    @Environment(\.appTheme) var theme

    var body: some View {
        NavigationStack {
            VStack(alignment: .center, spacing: 0) {
                HomeScreenHeader()

                HomeScreenBookingContainer()

                HStack {
                    Text("Sol")
                    Spacer()
                    Text("Orta")
                    Spacer()
                    Text("Sağ")
                }
                .background(.red)
                .frame(width: 200, height: 300, alignment: .bottom)

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

    @State var fromTextField: String = ""

    @State var selectedReturnDate: Date = .now
    @State var selectedDepartureDate: Date = .now

    @State var showingDepartureDatePicker: Bool = false

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

            HomeViewTextFieldLongHeader(text: "From")

            HStack(spacing: 0) {
                Image("flight_takeoff")
                    .resizable()
                    .frame(width: sizeCalculator(theme.deviceSize.width, 5.33), height: sizeCalculator(theme.deviceSize.height, 2.46))
                    .padding(.leading, sizeCalculator(theme.deviceSize.width, 4.79))

                // AutoComplete will be added
                TextField("Country, city or airport", text: $fromTextField)
                    .padding(.leading, sizeCalculator(theme.deviceSize.width, 4.26))

            }.frame(width: sizeCalculator(theme.deviceSize.width, 82.93), height: sizeCalculator(theme.deviceSize.height, 5.91), alignment: .leading)
                .background(Color(red: 230/255, green: 232/255, blue: 233/255))
                .cornerRadius(15)

            HStack(spacing: 0) {
                Text("To")
                    .font(theme.fonts.bodyBigger)
                    .foregroundStyle(.black)
                    .minimumScaleFactor(0.5)
                    .lineLimit(1)

                Spacer()

                Button(action: {}) {
                    Image("change")
                }

            }.frame(width: sizeCalculator(theme.deviceSize.width, 82.93), alignment: .bottomLeading)
                .padding(.vertical, sizeCalculator(theme.deviceSize.height, 0.98))

            HStack(spacing: 0) {
                Image("flight_landing")
                    .resizable()
                    .frame(width: sizeCalculator(theme.deviceSize.width, 5.33), height: sizeCalculator(theme.deviceSize.height, 2.46))
                    .padding(.leading, sizeCalculator(theme.deviceSize.width, 4.79))

                // AutoComplete will be added
                TextField("Country, city or airport", text: $fromTextField)
                    .padding(.leading, sizeCalculator(theme.deviceSize.width, 4.26))

            }.frame(width: sizeCalculator(theme.deviceSize.width, 82.93), height: sizeCalculator(theme.deviceSize.height, 5.91), alignment: .leading)
                .background(Color(red: 230/255, green: 232/255, blue: 233/255))
                .cornerRadius(15)
                .padding(.bottom, sizeCalculator(theme.deviceSize.height, 1.97))


            HStack(spacing: 0) {
                HStack(spacing: 0) {
                    VStack {
                        TextField("", text: Binding(
                            get: { formattedDate },
                            set: { _ in }
                        ))
                        .padding(.leading, sizeCalculator(theme.deviceSize.width, 4.26))
                        .disabled(showingDepartureDatePicker)
                        .onTapGesture {
                            showingDepartureDatePicker.toggle()
                        }
                    }
                    .sheet(isPresented: $showingDepartureDatePicker, content: {
                        AppDepartureDatePicker(selectedDepartureDate: $selectedDepartureDate, selectedReturnDate: $selectedReturnDate, isOneTrip: $isOneWayMarked)
                            .presentationDetents([.medium])
                    })
                }
                .frame(height: sizeCalculator(theme.deviceSize.height, 5.91))
                .background(Color(red: 230/255, green: 232/255, blue: 233/255))
                .cornerRadius(15)

                Spacer()

                HStack(spacing: 0) {
                    VStack {
                        TextField("", text: Binding(
                            get: { formattedDate },
                            set: { _ in }
                        ))
                        .padding(.leading, sizeCalculator(theme.deviceSize.width, 4.26))
                        .disabled(showingDepartureDatePicker)
                        .onTapGesture {
                            showingDepartureDatePicker.toggle()
                        }
                    }
                    .sheet(isPresented: $showingDepartureDatePicker, content: {
                        AppDepartureDatePicker(selectedDepartureDate: $selectedDepartureDate, selectedReturnDate: $selectedReturnDate, isOneTrip: $isOneWayMarked)
                            .presentationDetents([.medium])
                    })
                }
                .frame(height: sizeCalculator(theme.deviceSize.height, 5.91))
                .background(Color(red: 230/255, green: 232/255, blue: 233/255))
                .cornerRadius(15)
            }
            .frame(width: sizeCalculator(theme.deviceSize.width, 82.93), alignment: .leading)
            .padding(.bottom, sizeCalculator(theme.deviceSize.height, 1.97))

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

/* Image("calendar")
  .resizable()
  .frame(width: sizeCalculator(theme.deviceSize.width, 5.33), height: sizeCalculator(theme.deviceSize.height, 2.46))
  .padding(.leading, sizeCalculator(theme.deviceSize.width, 4.79))

 VStack {
  TextField("", text: Binding(
      get: { formattedDate },
      set: { _ in }
  ))
  .padding(.leading, sizeCalculator(theme.deviceSize.width, 4.26))
  .disabled(showingDepartureDatePicker)
  .onTapGesture {
      showingDepartureDatePicker.toggle()
  }

 }.sheet(isPresented: $showingDepartureDatePicker, content: {
  AppDepartureDatePicker(selectedDepartureDate: $selectedDepartureDate, selectedReturnDate: $selectedReturnDate, isOneTrip: $isOneWayMarked)
      .presentationDetents([.medium])
 }) */
