//
//  HTTPService.swift
//  NetworkServiceExample
//
//  Created by Olaf Bergmann on 05/10/2019.
//  Copyright © 2019 pm. All rights reserved.
//

import Foundation

class HTTPService {
    private let session: URLSession
    
    init(urlSession: URLSession = URLSession(configuration: .default)) {
        self.session = urlSession
    }
    
    func load<T>(_ resource: HTTPResource<T>, _ completion: @escaping (Result<T, Error>) -> ()) {
        let request = URLRequest(resource: resource)
        session.dataTask(with: request) { [weak self] (data, response, error) in
            self?.handleRequestCompletion(for: resource,
                                          data: data,
                                          response: response,
                                          error: error,
                                          completion: completion)
        }.resume()
    }
    
    private func handleRequestCompletion<T>(for resource: HTTPResource<T>, data: Data?, response: URLResponse?, error: Error?, completion: @escaping ((Result<T, Error>) -> ())) {
        do {
            if let e = error { throw e }
            guard let data = data else { fatalError("Unexpectedly receiver neither error nor data") }
            let object = try resource.parse(data)
            completion(.success(object))
        } catch let error {
            completion(.failure(error))
        }
    }
}
