//
//  ApiFactory.swift
//  
//
//  Created by Yusuke Hasegawa on 2021/12/29.
//

import Foundation

public class ApiFactory {
    public static func provideApi() -> ApiProtocol {
        return Api()
    }
}
