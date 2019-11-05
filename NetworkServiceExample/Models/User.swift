//
//  User.swift
//  NetworkServiceExample
//
//  Created by Olaf Bergmann on 07/10/2019.
//  Copyright © 2019 pm. All rights reserved.
//

import Foundation

struct User: Codable {
    var userName: String?
    var imageUrl: String?
    let apiSource: String = "DailyMotion"
    
    private enum CodingKeys: String, CodingKey {
        case userName = "username"
        case imageUrl = "avatar_360_url"
        case apiSource
    }
    
}
