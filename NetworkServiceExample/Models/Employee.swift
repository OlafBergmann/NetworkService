//
//  Employee.swift
//  NetworkServiceExample
//
//  Created by Olaf Bergmann on 05/10/2019.
//  Copyright © 2019 pm. All rights reserved.
//

import Foundation

struct Employee: Codable {
    let id: String
    let name: String
    let salary: String
    let age: String
    let profileImage: String
    
    private enum CodingKeys : String, CodingKey {
        case id
        case name = "employee_name"
        case salary = "employee_salary"
        case age = "employee_age"
        case profileImage = "profile_image"
    }
}
