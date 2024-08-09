//
//  HomeView.swift
//  FlightBookingApp
//
//  Created by TheHustleMachine on 9.08.2024.
//

import SwiftUI

struct HomeView: View {
    @Environment(\.appTheme) var theme
    
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,spacing: 0){
            
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
            .background(theme.blueColors.bc80)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView().environment(\.appTheme, AppTheme())
    }
}
