//
//  RequestSendCoinUseCase.swift
//  FavorletApp2App
//
//  Created by evahpirazzi on 2022/12/08.
//

import Foundation

class RequestSendCoinUseCase {
    
    private let app2AppRepository = App2AppRepository()
    
    
    func execute(
        request: App2AppSendCoinRequest
    ) async throws -> App2AppSendCoinResponse {
        return try await app2AppRepository.requestSendCoin(request: request)
    }
    
}
