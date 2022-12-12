//
//  App2AppExecuteContractRequest.swift
//  App2AppExample
//
//  Created by evahpirazzi on 2022/11/28.
//

import Foundation

public struct App2AppExecuteContractRequest {
    var action: String
    var chainId: Int
    var blockChainApp: App2AppBlockChainApp
    var transactions: [App2AppTransaction]
    
    
    public init(
        action: String,
        chainId: Int,
        blockChainApp: App2AppBlockChainApp,
        transactions: [App2AppTransaction]
    ) {
        self.action = action
        self.chainId = chainId
        self.blockChainApp = blockChainApp
        self.transactions = transactions
    }
    
    
    public func convertParams() -> [String: Any] {
        return [
            "action": self.action,
            "chainId": self.chainId,
            "blockChainApp": self.blockChainApp.convertParams(),
            "transactions": self.convertParamsByTransactions()
        ]
    }
    
    
    public func convertParamsByTransactions() -> [[String: Any?]] {
        var txArr: [[String: Any?]] = []
        for trans in (self.transactions) {
            txArr.append(trans.convertParams())
        }
        return txArr
    }
}
