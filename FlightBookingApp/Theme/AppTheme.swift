//
//  AppTheme.swift
//  FlightBookingApp
//
//  Created by TheHustleMachine on 1.08.2024.
//

import Foundation
import SwiftUI

struct AppTheme {
    let deviceSize: DeviceSize
    let fonts: Fonts
    let blueColors: BlueColors
    let dangerColors: DangerColors
    let successColors: SuccessColors
    let warningColors: WarningColors
    
    init() {
        self.deviceSize = DeviceSize()
        self.fonts = Fonts()
        self.blueColors = BlueColors()
        self.dangerColors = DangerColors()
        self.successColors = SuccessColors()
        self.warningColors = WarningColors()
    }
    
    struct DeviceSize {
        let width: CGFloat
        let height: CGFloat
        
        init() {
            let bounds = UIScreen.main.bounds
            self.width = bounds.width
            self.height = bounds.height
        }
    }
    
    struct Fonts {
        var bigTextBigger: Font = .custom("Inter-Regular", size: 40.0)
        var bigTextSmaller: Font = .custom("Inter-Regular", size: 24.0)
        var titleBigger: Font = .custom("Inter-Regular", size: 20.0)
        var titleSmaller: Font = .custom("Inter-Regular", size: 16.0)
        var bodyBigger: Font = .custom("Inter-Regular", size: 14.0)
        var bodySmaller: Font = .custom("Inter-Regular", size: 12.0)
        var bodySmallerV2: Font = .custom("Inter-Thin", size: 12.0)
        var overline: Font = .custom("Inter-Regular", size: 10.0)
    }
    
    struct BlueColors {
        var bc80: Color { return Color("BC80") }
        var bc70: Color { return Color("BC70") }
        var bc60: Color { return Color("BC60") }
        var bc50: Color { return Color("BC50") }
        var bc40: Color { return Color("BC40") }
        var bc30: Color { return Color("BC30") }
        var bc20: Color { return Color("BC20") }
        var bc10: Color { return Color("BC10") }
    }
    
    struct DangerColors {
        var dc80: Color { return Color("DC80") }
        var dc70: Color { return Color("DC70") }
        var dc60: Color { return Color("DC60") }
        var dc50: Color { return Color("DC50") }
        var dc40: Color { return Color("DC40") }
        var dc30: Color { return Color("DC30") }
        var dc20: Color { return Color("DC20") }
        var dc10: Color { return Color("DC10") }
    }
    
    struct SuccessColors {
        var sc80: Color { return Color("SC80") }
        var sc70: Color { return Color("SC70") }
        var sc60: Color { return Color("SC60") }
        var sc50: Color { return Color("SC50") }
        var sc40: Color { return Color("SC40") }
        var sc30: Color { return Color("SC30") }
        var sc20: Color { return Color("SC20") }
        var sc10: Color { return Color("SC10") }
    }
    
    struct WarningColors {
        var wc80: Color { return Color("WC80") }
        var wc70: Color { return Color("WC70") }
        var wc60: Color { return Color("WC60") }
        var wc50: Color { return Color("WC50") }
        var wc40: Color { return Color("WC40") }
        var wc30: Color { return Color("WC30") }
        var wc20: Color { return Color("WC20") }
        var wc10: Color { return Color("WC10") }
    }
}

struct AppThemeKey: EnvironmentKey {
    static let defaultValue = AppTheme()
}

extension EnvironmentValues {
    var appTheme: AppTheme {
        get { self[AppThemeKey.self] }
        set { self[AppThemeKey.self] = newValue }
    }
}
