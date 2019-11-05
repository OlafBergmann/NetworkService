//
//  HTTPResource.swift
//  NetworkServiceExample
//
//  Created by Olaf Bergmann on 05/10/2019.
//  Copyright © 2019 pm. All rights reserved.
//

import Foundation

struct HTTPResource<T: Codable> {
    let endpoint: Endpoint
    let parse: (Data) throws -> T
    
    init(endpoint: Endpoint) {
        self.endpoint = endpoint
        self.parse = { data throws -> T in
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        }
    }
    
    init(endpoint: Endpoint, parse: @escaping (Data) throws -> T) {
        self.endpoint = endpoint
        self.parse = parse
    }
}


extension URLRequest {
    init<T>(resource: HTTPResource<T>) {
        let url = resource.endpoint.url
        self.init(url: url)
        httpMethod = resource.endpoint.method.name
        switch resource.endpoint.method {
        case let .post(body):
            setValue(body.contentType, forHTTPHeaderField: "Content-Type")
            httpBody = body.body
        case let .put(body):
            setValue(body.contentType, forHTTPHeaderField: "Content-Type")
            httpBody = body.body
        case let .update(body):
            setValue(body.contentType, forHTTPHeaderField: "Content-Type")
            httpBody = body.body
        default:
            break
        }
    }
}
