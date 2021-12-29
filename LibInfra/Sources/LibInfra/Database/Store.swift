//
//  Store.swift
//  
//
//  Created by Yusuke Hasegawa on 2021/12/29.
//

import Foundation

public protocol StoreProtocol {
    func getEntity() -> SampleEntity
}

class Store {
    
}

extension Store: StoreProtocol {
    
    func getEntity() -> SampleEntity {
        return SampleEntity(id: "abc", name: "john")
    }
    
}
