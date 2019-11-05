//
//  Endpoint.swift
//  NetworkServiceExample
//
//  Created by Olaf Bergmann on 05/10/2019.
//  Copyright © 2019 pm. All rights reserved.
//

import Foundation


enum Endpoint {
    case getEmployees
    case getGithubUsers
    case getUsers
    
    var path: String {
        switch self {
        case .getEmployees:
            return "/api/v1/employees"
        case .getGithubUsers:
            return "/users"
        case .getUsers:
            return "/users?fields=avatar_360_url,username"
        }
    }

    
    var basePath: String {
        switch self {
        case .getGithubUsers:
            return "https://api.github.com"
        case .getUsers:
            return "https://api.dailymotion.com"
        case .getEmployees:
            return "http://dummy.restapiexample.com"
            
        }
    }
    
    var method: HTTPMethod {
        switch self {

        default:
            return .get
        }
    }
    
    var url: URL {
        switch self {
        default:
            return URL(string: basePath + path)!
        }
    }
}

