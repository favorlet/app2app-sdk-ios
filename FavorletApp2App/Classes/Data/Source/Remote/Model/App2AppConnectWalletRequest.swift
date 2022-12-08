//
//  App2AppConnectWalletRequest.swift
//  App2AppExample
//
//  Created by evahpirazzi on 2022/11/28.
//

import Foundation

struct App2AppConnectWalletRequest: Codable {
    var action: String
    var chainId: Int
    var blockChainApp: App2AppBlockChainApp

    
    func convertParams() -> [String: Any] {
        return [
            "action": self.action,
            "chainId": self.chainId,
            "blockChainApp": self.blockChainApp.convertParams()
        ]
    }
}
