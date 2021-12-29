//
//  Api.swift
//  
//
//  Created by Yusuke Hasegawa on 2021/06/28.
//

import Foundation
import Alamofire

public protocol ApiProtocol {
    func getResponse(completion: @escaping (Result<HTTPBinResponse, ApiError>) -> Void)
}

class Api {
    
}

extension Api: ApiProtocol {
    
    func getResponse(completion: @escaping (Result<HTTPBinResponse, ApiError>) -> Void) {
        AF.request("https://httpbin.org/get").responseDecodable(of: HTTPBinResponse.self) { response in
            completion(response.result)
        }
    }
    
}
