//
//  App2AppSignMessageRequest.swift
//  App2AppExample
//
//  Created by evahpirazzi on 2022/11/28.
//

import Foundation

public struct App2AppSignMessageRequest {
    var action: String
    var chainId: Int
    var blockChainApp: App2AppBlockChainApp
    var signMessage: App2AppSignMessage
    
    
    public init(
        action: String,
        chainId: Int,
        blockChainApp: App2AppBlockChainApp,
        signMessage: App2AppSignMessage
    ) {
        self.action = action
        self.chainId = chainId
        self.blockChainApp = blockChainApp
        self.signMessage = signMessage
    }
    
    
    public func convertParams() -> [String: Any] {
        return [
            "action": self.action,
            "chainId": self.chainId,
            "blockChainApp": self.blockChainApp.convertParams(),
            "signMessage": self.signMessage.convertParams()
        ]
    }
}
