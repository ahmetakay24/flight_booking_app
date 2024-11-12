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

                VStack{
                    HomeScreenBookingContainer()
                }.clipShape(
                    .rect(
                        topLeadingRadius: 30,
                        topTrailingRadius: 30
                    )
                ).background(theme.blueColors.bc80)

            }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
                .background(.white)
        }
    }
}

#Preview {
    HomeView().environment(\.appTheme, AppTheme())
}

