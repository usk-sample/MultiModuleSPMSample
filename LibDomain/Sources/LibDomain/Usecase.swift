//
//  Usecase.swift
//  
//
//  Created by Yusuke Hasegawa on 2021/06/28.
//

import Foundation
import LibInfra
import LibApi

public class Usecase {
    
    private let store = StoreFactory.provideStore()
    private let api = ApiFactory.provideApi()
        
    public init() {
        
    }
    
    public func getModel() -> SampleModel {
        let entity = store.getEntity()
        return SampleModel(id: entity.id, name: entity.name)
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
