//
//  RequestConnectWalletUseCase.swift
//  FavorletApp2App
//
//  Created by evahpirazzi on 2022/12/08.
//

import Foundation

class RequestConnectWalletUseCase {
    
    private let app2AppRepository = App2AppRepository()
    
    
    func execute(
        request: App2AppConnectWalletRequest
    ) async throws -> App2AppConnectWalletResponse {
        return try await app2AppRepository.requestConnectWallet(request: request)
    }
    
}
