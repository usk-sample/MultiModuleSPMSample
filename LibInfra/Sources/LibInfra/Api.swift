//
//  Api.swift
//  
//
//  Created by Yusuke Hasegawa on 2021/06/28.
//

import Foundation
import Alamofire
import LibData

public class Api {
        
    public init() {
        
    }
    
    public func getModel() -> SampleModel {
        return SampleModel.init(id: "abc", name: "john")
    }
    
    public func getResponse(completion: @escaping (Result<HTTPBinResponse, ApiError>) -> Void) {
        AF.request("https://httpbin.org/get").responseDecodable(of: HTTPBinResponse.self) { response in
            completion(response.result)
        }
    }
    
}
