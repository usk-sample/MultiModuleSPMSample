//
//  Store.swift
//  
//
//  Created by Yusuke Hasegawa on 2021/12/29.
//

import Foundation

public class Store {
    
    public init() { }
    
    public func getModel() -> SampleEntity {
        return SampleEntity.init(id: "abc", name: "john")
    }
    
}
