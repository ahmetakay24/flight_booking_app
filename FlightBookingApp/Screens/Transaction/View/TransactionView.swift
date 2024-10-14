//
//  TransactionView.swift
//  FlightBookingApp
//
//  Created by TheHustleMachine on 7.10.2024.
//

import SwiftUI

struct TransactionView: View {
    @Environment(\.appTheme) var theme
    @Environment(\.dismiss) var dismiss

    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                TransactionViewHeaderAndImage()

                TransactionViewTitleAndDescription()

                TransactionViewBookTripButton()
                    .padding(.top)

                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .navigationBarBackButtonHidden(true)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    backButton
                }
            }
        }
    }
    
    var backButton: some View {
        Button(action: {
            dismiss()
        }) {
            Image(systemName: "chevron.left").foregroundStyle(theme.otherColors.blackest)
        }
    }
}

#Preview {
    TransactionView()
}
