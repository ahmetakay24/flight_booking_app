//
//  ServiceProtocol.swift
//  FlightBookingApp
//
//  Created by TheHustleMachine on 17.08.2024.
//

import Foundation

protocol ServiceProtocol {
    
    func downloadDatas(completion: @escaping (Result<[Any], Error>) -> Void)
    
}

public enum ServiceError : Error{
    case WrongURL
    case ServerError
    case ParsingError
    case NullData
}
