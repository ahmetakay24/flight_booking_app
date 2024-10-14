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
            
    }
}

struct HomeChangeAirportButton : View {
    
    @Environment(\.appTheme) var theme
    
    var body: some View {
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
    }
}

struct HomeDepartureAndArrivalDatePickers : View {
    
    @Environment(\.appTheme) var theme
    
    var formattedDate: String
    
    @Binding var selectedDepartureDate: Date
    @Binding var selectedArrivalDate: Date
    
    @Binding var showingDepartureDatePicker: Bool
    @Binding var showingArrivalDatePicker: Bool
    
    var body: some View {
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
                    AppDatePicker(selectedDate:$selectedDepartureDate)
                        .presentationDetents([.height(sizeCalculator(theme.deviceSize.height, 62))])
                })
            }
            .frame(height: sizeCalculator(theme.deviceSize.height, 5.91))
            .background(Color(red: 230/255, green: 232/255, blue: 233/255))
            .cornerRadius(15)

            Spacer()

            HStack(spacing: 0) {
                
                VStack {
                    TextField("", text: .constant(formattedDate))
                        .padding(.leading, sizeCalculator(theme.deviceSize.width, 4.26))
                        .disabled(showingArrivalDatePicker)
                        .onTapGesture {
                            showingDepartureDatePicker.toggle()
                        }
                }
                .sheet(isPresented: $showingArrivalDatePicker, content: {
                    AppDatePicker(selectedDate: $selectedArrivalDate)
                        .presentationDetents([.height(sizeCalculator(theme.deviceSize.height, 62))])
                })
            }
            .frame(height: sizeCalculator(theme.deviceSize.height, 5.91))
            .background(Color(red: 230/255, green: 232/255, blue: 233/255))
            .cornerRadius(15)
        }
        .frame(width: sizeCalculator(theme.deviceSize.width, 82.93), alignment: .leading)
    }
}


struct HomeSearchFlightsButton : View {
    
    @Environment(\.appTheme) var theme
    
    var body: some View {
        Button(action:{}){
            
            Text("Search flights")
                .foregroundStyle(.white)
                .padding(.vertical,sizeCalculator(theme.deviceSize.height, 1.72))
                .padding(.horizontal,sizeCalculator(theme.deviceSize.width, 27.19))
            
        }.background(theme.blueColors.bc80)
            .cornerRadius(5)
    }
}


