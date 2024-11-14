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

struct CustomLineShapeWithAlignment: Shape {
    
    let stratPoint: Alignment
    let endPoint: Alignment
    
    init(stratPoint: Alignment, endPoint: Alignment) {
        self.stratPoint = stratPoint
        self.endPoint = endPoint
    }
    
    private func cgPointTranslator(alignment: Alignment, rect: CGRect) -> CGPoint {
        
        switch alignment {
        case .topLeading: return CGPoint(x: rect.minX, y: rect.minY)
        case .top: return CGPoint(x: rect.midX, y: rect.minY)
        case .topTrailing: return CGPoint(x: rect.maxX, y: rect.minY)
            
        case .leading: return CGPoint(x: rect.minX, y: rect.midY)
        case .center: return CGPoint(x: rect.midX, y: rect.midY)
        case .trailing: return CGPoint(x: rect.maxX, y: rect.midY)
            
        case .bottomLeading: return CGPoint(x: rect.minX, y: rect.maxY)
        case .bottom: return CGPoint(x: rect.midX, y: rect.maxY)
        case .bottomTrailing: return CGPoint(x: rect.maxX, y: rect.maxY)
        default: return CGPoint(x: rect.minX, y: rect.minY)
        }
        
    }

    func path(in rect: CGRect) -> Path {
        
        Path { path in
            
            path.move(to: cgPointTranslator(alignment: stratPoint, rect: rect))
            path.addLine(to: cgPointTranslator(alignment: endPoint, rect: rect))
            
        }
        
    }
    
}
