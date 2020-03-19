//
//  APIClient.swift
//  Marvel
//
//  Created by Moeen Ahmad on 8/9/19.
//  Copyright © 2019 Moeen Ahmad. All rights reserved.
//

import CoreNetwork
import Promises

// MARK: - Typealias

typealias RequestBuilder<T: Decodable> = CoreNetwork.RequestBuilder<MarvelResponse<T>>
typealias Promise<T> = Promises.Promise<T>

// MARK: - APIClient

extension APIClient {
    
    func execute<T: APIRequest, D: Decodable>(_ request: T) -> Promise<Paginator<D>> {
        return Promise<Paginator<D>>(on: .global(qos: .background)) { fullfill, reject in
            self.execute(request).then {
                let response = $0 as? MarvelResponse<D>
                
                if let dataContainer = response?.data {
                    fullfill(dataContainer)
                } else if let message = response?.message {
                    reject(MarvelError(message))
                } else {
                    reject(MarvelError.general)
                }
            }.catch {
                reject($0)
            }
        }
    }
    
}
