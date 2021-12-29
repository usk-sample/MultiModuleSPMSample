//
//  Store.swift
//  
//
//  Created by Yusuke Hasegawa on 2021/12/29.
//

import Foundation

public class Store {
    
    public init() { }
    
    public func getModel() -> SampleModel {
        return SampleModel.init(id: "abc", name: "john")
    }
    
}
