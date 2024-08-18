//
//  ViewModelProtocol.swift
//  FlightBookingApp
//
//  Created by TheHustleMachine on 18.08.2024.
//

import Foundation

protocol ViewModelProtocol {
    var service: ServiceProtocol { get set }

    var error: Error? { get set }
    var isLoading: Bool { get set }
}
