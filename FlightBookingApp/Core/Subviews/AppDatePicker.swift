//
//  AppDatePicker.swift
//  FlightBookingApp
//
//  Created by TheHustleMachine on 23.08.2024.
//

import SwiftUI

struct AppDatePicker: View {
    @Environment(\.appTheme) var theme
    @Environment(\.dismiss) var dismiss

    @Binding var selectedDate: Date
    
    var body: some View {
        VStack(spacing: 0) {
            Rectangle()
                .fill(Color.gray.opacity(0.3))
                .frame(width: sizeCalculator(theme.deviceSize.width, 15.99), height: sizeCalculator(theme.deviceSize.height, 0.36))
                .cornerRadius(2.5)
                .padding(.top, sizeCalculator(theme.deviceSize.height, 1.78))


                DatePicker("", selection: $selectedDate, displayedComponents: .date)
                .datePickerStyle(.wheel)
                    .padding()
                    .navigationTitle("Select Departure Date")
                    .navigationBarTitleDisplayMode(.inline)
            

            Button(action: {
                dismiss()
            }, label: {
                
                Text("Select Date").foregroundStyle(.white)
                    .padding(.vertical, sizeCalculator(theme.deviceSize.height, 1.84))
                    .padding(.horizontal, sizeCalculator(theme.deviceSize.width, 31.46))
                
            }).background(theme.blueColors.bc80)
                .clipShape(RoundedRectangle(cornerRadius: 5))
                

        }.frame(width: theme.deviceSize.width, height: sizeCalculator(theme.deviceSize.height, 50), alignment: .top)
            .background(.white)
            .clipShape(
                .rect(
                    topLeadingRadius: 30,
                    topTrailingRadius: 30
                )
            )
    }
}
