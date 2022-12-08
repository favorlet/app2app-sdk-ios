//
//  ReceiptUseCase.swift
//  FavorletApp2App
//
//  Created by evahpirazzi on 2022/12/08.
//

import Foundation

class ReceiptUseCase {
    
    private let app2AppRepository = App2AppRepository()
    
    
    func execute(requestId: String) async throws -> App2AppReceiptResponse {
        return try await app2AppRepository.requestReceipt(requestId: requestId)
    }
    
}
