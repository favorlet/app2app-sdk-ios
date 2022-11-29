//
//  AlamofireManager.swift
//  App2AppExample
//
//  Created by evahpirazzi on 2022/11/28.
//

import Foundation
import Alamofire

class AlamofireManager {
    
    private var baseUrl = ""
    private let TIMEOUT_SECONDS: Double = 10
    
    
    init(baseUrl: String) {
        self.baseUrl = baseUrl
    }
    
    
    
    func requestApp2AppApi(
        url: String,
        method: HTTPMethod,
        parameters: Parameters? = nil,
        encoding: ParameterEncoding = JSONEncoding.default
    ) -> DataRequest {
        return AF.request(
            baseUrl + url,
            method: method,
            parameters: parameters,
            encoding: encoding,
            headers: nil,
            requestModifier: {
                $0.timeoutInterval = self.TIMEOUT_SECONDS
            }
        )
    }
}
