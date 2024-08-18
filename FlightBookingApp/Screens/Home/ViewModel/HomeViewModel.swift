//
//  HomeViewModel.swift
//  FlightBookingApp
//
//  Created by TheHustleMachine on 17.08.2024.
//

import Foundation

class HomeViewModel: ViewModelProtocol, ObservableObject {
    var service: ServiceProtocol
    
    @Published var airports: [Any] = []
    
    @Published var error: Error?
    @Published var isLoading: Bool = false
    
    init(service: ServiceProtocol = HomeService()) {
        self.service = service
    }
    
    func fetchDatas() {
        isLoading = true
        service.downloadDatas { [weak self] result in
            guard let self = self else {
                return
            }
            
            isLoading = false
            
            switch result {
            case .success(let airports):
                self.airports = airports
                
            case .failure(let error):
                self.error = error
            }
        }
    }
}
