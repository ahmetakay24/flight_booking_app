//
//  HomeViewModel.swift
//  FlightBookingApp
//
//  Created by TheHustleMachine on 17.08.2024.
//

import Foundation

class HomeService: ServiceProtocol {
    let url = URL(string: "https://ahmetakay24.github.io/flight_booking_app_mock_json/airports/airports.json")
    
    func downloadDatas(completion: @escaping (Result<[Any], Error>) -> Void) {
        guard let url = url else {
            return print(ServiceError.WrongURL)
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            if error != nil {
                return completion(.failure(ServiceError.ServerError))
            }
            
            if let response = response as? HTTPURLResponse, response.statusCode == 200 {
                return completion(.failure(ServiceError.ServerError))
            }
            
            guard let data = data else {
                return completion(.failure(ServiceError.NullData))
            }
            
            DispatchQueue.main.async {
                do {
                    let datas = try JSONDecoder().decode([HomeModel].self, from: data)
                    return completion(.success(datas))
                } catch {
                    return completion(.failure(ServiceError.ParsingError))
                }
            }
            
        }.resume()
    }
}
