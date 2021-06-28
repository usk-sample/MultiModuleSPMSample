//
//  SimpleModel.swift
//  
//
//  Created by Yusuke Hasegawa on 2021/06/28.
//

import Foundation

public struct SampleModel: Codable {
    public var id: String
    public var name: String
    
    public init(id: String, name: String) {
        self.id = id
        self.name = name
    }
    
}
