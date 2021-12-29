//
//  Usecase.swift
//  
//
//  Created by Yusuke Hasegawa on 2021/06/28.
//

import Foundation
import Combine
import LibInfra

public class Usecase: ObservableObject {
    
    private let store = Store()
    private let api = Api()
        
    public init() {
        
    }
    
    public func getModel() -> SampleEntity {
        return store.getModel()
    }
    
    public func getResponse(completion: @escaping (Result<String, ApiError>) -> Void) {
        
        api.getResponse { result in
            switch result {
            case .success(let response):
                completion(.success(response.url))
                
            case .failure(let error):
                completion(.failure(error))
            }
        }
        
    }
    
}
