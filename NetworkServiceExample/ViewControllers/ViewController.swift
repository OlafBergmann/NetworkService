//
//  ViewController.swift
//  NetworkServiceExample
//
//  Created by Olaf Bergmann on 05/10/2019.
//  Copyright © 2019 pm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private let httpService = HTTPService()

    override func viewDidLoad() {
        super.viewDidLoad()
        //fetchBooks()
        //fetchGithubUsers()
        fetchUsers()
    
    }

    private func fetchBooks() {
        httpService.getEmployees() { result in
            switch result {
            case let .success(employees):
                print("Fetched employees: ", employees)
            case let .failure(error):
                print("Oops, there was an error: ", error.localizedDescription)
            }
        }
    }
    
    private func fetchGithubUsers() {
        httpService.getGithubUsers() { result in
            switch result {
            case let .success(githubUsers):
                print("Fetched Github users", githubUsers)
            case let .failure(error):
                print("Oops, there was an error: ", error.localizedDescription)
                
            }
        }
    }
    
    private func fetchUsers() {
        httpService.getUsers() { result in
            switch result {
            case let .success(usersList):
                print("Fetched users", usersList)
            case let .failure(error):
                print("Oops, there was an error: ", error.localizedDescription)
                
            }
        }
    }
}

