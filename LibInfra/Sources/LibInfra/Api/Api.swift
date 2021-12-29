//
//  Api.swift
//  
//
//  Created by Yusuke Hasegawa on 2021/06/28.
//

import Foundation
import Alamofire

public class Api {
        
    public init() {
        
    }    
    
    public func getResponse(completion: @escaping (Result<HTTPBinResponse, ApiError>) -> Void) {
        AF.request("https://httpbin.org/get").responseDecodable(of: HTTPBinResponse.self) { response in
            completion(response.result)
        }
    }
    
}
