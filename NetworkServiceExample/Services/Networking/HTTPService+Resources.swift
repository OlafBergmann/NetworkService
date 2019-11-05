//
//  HTTPService+Resources.swift
//  NetworkServiceExample
//
//  Created by Olaf Bergmann on 05/10/2019.
//  Copyright © 2019 pm. All rights reserved.
//

import Foundation

typealias Completion<T> = (Result<T, Error>) -> ()

extension HTTPService {
    func getEmployees(_ completion: @escaping Completion<[Employee]>) {
        let resource = HTTPResource<[Employee]>(endpoint: .getEmployees)
        load(resource, completion)
    }
    
    func getGithubUsers(_ completion: @escaping Completion<[GithubUser]>) {
        let resource = HTTPResource<[GithubUser]>(endpoint: .getGithubUsers)
        load(resource, completion)
    }
    
    func getUsers(_ completion: @escaping Completion<UsersList>) {
        let resource = HTTPResource<UsersList>(endpoint: .getUsers)
        load(resource, completion)
    }
    
//    func signUp(user: GithubUser, _ completion: @escaping Completion<Void>) {
//        let resource = HTTPResource<GithubUser>(endpoint
//    }
}
