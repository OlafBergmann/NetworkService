//
//  HTTPBody.swift
//  NetworkServiceExample
//
//  Created by Olaf Bergmann on 05/10/2019.
//  Copyright © 2019 pm. All rights reserved.
//

import Foundation

enum HTTPBody {
    case empty
    case json(Data)
    
    var body: Data? {
        switch self {
        case .json(let data):
            return data
        case .empty:
            return nil
        }
    }
    
    var contentType: String? {
        switch self {
        case .json:
            return "application/json"
        case .empty:
            return nil
        }
    }
}
