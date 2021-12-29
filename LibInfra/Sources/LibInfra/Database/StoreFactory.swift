//
//  StoreFactory.swift
//  
//
//  Created by Yusuke Hasegawa on 2021/12/29.
//

import Foundation

public class StoreFactory {
    
    public class func provideStore() -> StoreProtocol {
        return Store()
    }
    
}
