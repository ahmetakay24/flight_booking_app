//
//  AppDatePicker.swift
//  FlightBookingApp
//
//  Created by TheHustleMachine on 23.08.2024.
//

import SwiftUI

struct TestView : View {
    
    @Environment(\.appTheme) var theme
    
    @State var selectedDepartureDate : Date = .now
    
    @State var isOneTrip : Bool = true
    
    @State var isShowingReturnDatePicker : Bool = false
    
    var body: some View {

        VStack{
            
            VStack{
                
                Text("Select Date")
                
                Text("20 Jun 2020")
                
                DatePicker("", selection: $selectedDepartureDate, displayedComponents: .date)
                .datePickerStyle(.graphical)
                    .padding()
                    .navigationTitle("Select Departure Date")
                    .navigationBarTitleDisplayMode(.inline)
            }.frame(height: sizeCalculator(theme.deviceSize.height, 58.12))
                .background(.white)
                .clipShape(
                    .rect(
                        topLeadingRadius: 30,
                        topTrailingRadius: 30
                    )
                )
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.black)
            .ignoresSafeArea()
    }
}

struct AppDepartureDatePicker: View {
    @Binding var selectedDepartureDate: Date
    @Binding var selectedReturnDate: Date
    @Binding var isOneTrip: Bool

    @State var isShowingReturnDatePicker: Bool = false
    
    @Environment(\.dismiss) var dismiss

    public var body: some View {
        NavigationStack {
            DatePicker("", selection: $selectedDepartureDate, displayedComponents: .date)
                .datePickerStyle(.graphical)
                .padding()
                .navigationTitle("Select Departure Date")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .confirmationAction) {
                        Button("Select") {
                            if isOneTrip == false {
                                isShowingReturnDatePicker = true
                            } else {
                                dismiss()
                            }
                        }
                    }
                    ToolbarItem(placement: .cancellationAction) {
                        Button("Cancel") {
                            dismiss()
                        }
                    }
                }.navigationDestination(isPresented: $isShowingReturnDatePicker) {
                    AppReturnDatePicker(selectedReturnDate: $selectedReturnDate, dismiss: dismiss)
                }
        }
    }
}

struct AppReturnDatePicker: View {
    @Binding var selectedReturnDate: Date
    let dismiss: DismissAction

    public var body: some View {
        NavigationStack {
            DatePicker("", selection: $selectedReturnDate, displayedComponents: .date)
                .datePickerStyle(.graphical)
                .padding()
                .navigationTitle("Select Return Date")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .cancellationAction) {
                        Button("Cancel") {
                            dismiss()
                        }
                    }
                    ToolbarItem(placement: .confirmationAction) {
                        Button("Select") {
                            dismiss()
                        }
                    }
                }
                .navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    TestView()
}
