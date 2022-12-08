//
//  RequestSignMessageUseCase.swift
//  FavorletApp2App
//
//  Created by evahpirazzi on 2022/12/08.
//

import Foundation

class RequestSignMessageUseCase {
    
    private let app2AppRepository = App2AppRepository()
    
    
    func execute(
        request: App2AppSignMessageRequest
    ) async throws -> App2AppSignMessageResponse {
        return try await app2AppRepository.requestSignMessage(request: request)
    }
    
}
