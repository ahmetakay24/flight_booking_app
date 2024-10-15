//
//  TransactionViewSections.swift
//  FlightBookingApp
//
//  Created by TheHustleMachine on 14.10.2024.
//

import SwiftUI

struct TransactionViewHeaderAndImage: View {
    @Environment(\.appTheme) var theme

    var body: some View {
        
        HStack{
            
            Text("Transaction")
                .font(theme.fonts.bigTextSmaller)
                .minimumScaleFactor(0.5)
                .padding()
            
        }.frame(width: theme.deviceSize.width,alignment: .leading)

        Image("transaction_image")
            .resizable()
            .frame(width: sizeCalculator(theme.deviceSize.width, 79.22), height: sizeCalculator(theme.deviceSize.height, 19.58), alignment: .center)
    }
}

struct TransactionViewTitleAndDescription: View {
    @Environment(\.appTheme) var theme

    var body: some View {
        Text("Let’s go somewhere")
            .font(theme.fonts.titleBigger)
            .lineLimit(1)
            .minimumScaleFactor(0.5)
            .padding(.top, sizeCalculator(theme.deviceSize.height, 10.71))

        Text("After book a trip you can manage orders and see E-ticket here.")
            .multilineTextAlignment(.center)
            .lineLimit(2)
            .minimumScaleFactor(0.5)
            .padding(.top)
            .padding(.horizontal)
    }
}

struct TransactionViewBookTripButton: View {
    @Environment(\.appTheme) var theme

    var body: some View {
        Button(action: {}) {
            Text("Book a trip")
                .foregroundStyle(.white)
                .padding(.vertical)
                .padding(.horizontal, sizeCalculator(theme.deviceSize.width, 36.1))

        }.background(theme.blueColors.bc80)
            .cornerRadius(5)
    }
}


