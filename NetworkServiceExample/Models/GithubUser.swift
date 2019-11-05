//
//  GithubUser.swift
//  NetworkServiceExample
//
//  Created by Olaf Bergmann on 07/10/2019.
//  Copyright © 2019 pm. All rights reserved.
//

import Foundation

struct GithubUser: Codable {
    var userName: String?
    var imageUrl: String?
    let apiSource: String = "Github"
    
    private enum CodingKeys: String, CodingKey {
        case userName = "login"
        case imageUrl = "avatar_url"
        case apiSource
    }
}
