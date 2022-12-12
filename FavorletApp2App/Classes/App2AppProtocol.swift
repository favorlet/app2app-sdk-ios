//
//  File.swift
//  FavorletApp2App
//
//  Created by evahpirazzi on 2022/12/08.
//

import Foundation

public protocol App2AppProtocol {
    
    func requestConnectWallet(
        request: App2AppConnectWalletRequest
    ) async throws -> App2AppConnectWalletResponse
    
    
    func requestSignMessage(
        request: App2AppSignMessageRequest
    ) async throws -> App2AppSignMessageResponse
    
    
    func requestSendCoin(
        request: App2AppSendCoinRequest
    ) async throws -> App2AppSendCoinResponse
    
    
    func requestExecuteContract(
        request: App2AppExecuteContractRequest
    ) async throws -> App2AppExecuteContractResponse
    
    
    func execute(requestId: String)
    
    
    func receipt(
        requestId: String
    ) async throws -> App2AppReceiptResponse
    
}
