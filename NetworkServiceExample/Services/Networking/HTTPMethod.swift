//
//  HTTPMethod.swift
//  NetworkServiceExample
//
//  Created by Olaf Bergmann on 05/10/2019.
//  Copyright © 2019 pm. All rights reserved.
//

import Foundation

enum HTTPMethod {
    case get
    case put(HTTPBody)
    case post(HTTPBody)
    case delete
    case update(HTTPBody)
    
    var name: String {
        switch self {
        case .get:
            return "GET"
        case .put:
            return "PUT"
        case .post:
            return "POST"
        case .delete:
            return "DELETE"
        case .update:
            return "UPDATE"
        }
    }
}
