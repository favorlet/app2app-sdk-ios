//
//  App2AppSignMessageRequest.swift
//  App2AppExample
//
//  Created by evahpirazzi on 2022/11/28.
//

import Foundation

struct App2AppSignMessageRequest {
    var action: String
    var chainId: Int
    var blockChainApp: App2AppBlockChainApp
    var signMessage: App2AppSignMessage
    
    
    func convertParams() -> [String: Any] {
        return [
            "action": self.action,
            "chainId": self.chainId,
            "blockChainApp": self.blockChainApp.convertParams(),
            "signMessage": self.signMessage.convertParams()
        ]
    }
}
