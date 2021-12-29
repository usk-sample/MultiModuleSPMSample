//
//  Store.swift
//  
//
//  Created by Yusuke Hasegawa on 2021/12/29.
//

import Foundation

public class Store {
    
    public init() { }
    
    public func getEntity() -> SampleEntity {
        return SampleEntity(id: "abc", name: "john")
    }
    
}
