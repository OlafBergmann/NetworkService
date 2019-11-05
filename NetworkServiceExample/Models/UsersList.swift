//
//  UsersList.swift
//  NetworkServiceExample
//
//  Created by Olaf Bergmann on 08/10/2019.
//  Copyright © 2019 pm. All rights reserved.
//

import Foundation

struct UsersList: Codable {
    var page: Int?
    var limit: Int?
    var listOfUsers: [User]?
    
    private enum CodingKeys: String, CodingKey {
        case page
        case limit
        case listOfUsers = "list"
    }
}
