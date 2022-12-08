//
//  App2AppExecuteContractResponse.swift
//  App2AppExample
//
//  Created by evahpirazzi on 2022/11/28.
//

import Foundation

struct App2AppExecuteContractResponse: Decodable {
    var requestId: String?
    var expiredAt: Int?
    var error: App2AppError?
}
