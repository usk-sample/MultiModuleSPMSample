//
//  ViewModel.swift
//  MultiModuleSPMSample
//
//  Created by Yusuke Hasegawa on 2021/12/29.
//

import Foundation
import LibDomain

class ViewModel: ObservableObject {
    
    private let usecase = Usecase()
    
    func getData() {
        
        let model = usecase.getModel()
        debugPrint(model)
        
        usecase.getResponse { result in
            switch result {
            case .success(let url):
                debugPrint(url)
            case .failure(let error):
                debugPrint(error)
            }
        }
        
    }
    
}
