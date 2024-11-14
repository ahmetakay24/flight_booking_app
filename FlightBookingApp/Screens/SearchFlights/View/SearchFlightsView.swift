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

                    VStack(spacing: 0) {
                                            
                        Spacer()
                                            
                        HStack(spacing: 0) {
                                                
                            VStack(alignment: .leading) {
                                Text("LGA")
                                    .font(theme.fonts.titleBigger)
                                Text("New York")
                                    .lineLimit(1)
                                    .font(theme.fonts.bodySmaller)
                            }
                                                
                            Spacer()
                                                
                            VStack {
                                Image("flight_trip_icon")
                                                    
                                Text("23:00 Hours")
                                    .font(theme.fonts.bodySmaller)
                            }
                                                
                            Spacer()
                                                
                            VStack(alignment: .trailing) {
                                Text("DAD")
                                    .font(theme.fonts.titleBigger)
                                Text("Da Nang")
                                    .lineLimit(1)
                                    .font(theme.fonts.bodySmaller)
                                    .frame(maxWidth: .infinity, alignment: .trailing) // Yine max genişlik ve hizalama
                            }
                                                
                        }
                        .padding(.horizontal, 18)
                                            
                        HStack {
                                                
                            VStack(alignment: .leading) {
                                Text("8:00 AM")
                                    .font(theme.fonts.titleBigger)
                                Text("August 28, 2021")
                                    .font(theme.fonts.bodySmaller)
                            }
                                                
                            Spacer()
                                                
                            VStack(alignment: .trailing) {
                                Text("DAD")
                                    .font(theme.fonts.titleBigger)
                                Text("August 29, 2021")
                                    .font(theme.fonts.bodySmaller)
                            }
                                                
                        }
                        .padding(.horizontal, 18)
                                            
                        CustomLineShapeWithAlignment(stratPoint: .leading, endPoint: .trailing)
                            .stroke(style: StrokeStyle(lineWidth: 1.0, dash: [5]))
                                            
                        HStack {
                            Image("thyao")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 24, height: 24)
                                                
                            Text("Turkish Airlines")
                                .font(theme.fonts.bodySmaller)
                                .foregroundStyle(.gray)
                                                
                            Spacer()
                                                    
                            Text("$390")
                                .font(theme.fonts.titleBigger) // Fiyat font stilini belirleyin
                        }
                        .padding(.horizontal, 18)
                                            
                        Spacer()

                    }
                    .frame(
                        width: sizeCalculator(theme.deviceSize.width, 75.46),
                        height: sizeCalculator(theme.deviceSize.height, 23.64)
                    )
                    .background(Color.white)
                    
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(theme.blueColors.bc80)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(theme.blueColors.bc80)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Flight Search")
                        .font(theme.fonts.titleBigger)
                        .foregroundStyle(.white)
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {}) {
                        Image(systemName: "chevron.left")
                            .font(theme.fonts.titleSmaller)
                            .foregroundStyle(.white)
                    }
                }
            }
        }
    }
}

#Preview {
    SearchFlightsView()
}
