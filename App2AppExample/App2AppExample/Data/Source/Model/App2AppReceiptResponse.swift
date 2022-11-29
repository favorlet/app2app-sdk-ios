//
//  App2AppReceiptResponse.swift
//  App2AppExample
//
//  Created by evahpirazzi on 2022/11/28.
//

import Foundation

struct App2AppReceiptResponse: Decodable {
    var requestId: String?
    var expiredAt: Int?
    var action: String?
    var connectWallet: App2AppReceiptResponse.ConnectWallet?
    var signMessage: App2AppReceiptResponse.SignMessage?
    var transactions: [App2AppReceiptResponse.Transaction]?
    var error: App2AppError?
    
    
    struct ConnectWallet: Decodable {
        var status: String?
        var address: String?
        var errorMessage: String?
    }
    
    
    struct SignMessage: Decodable {
        var status: String?
        var signature: String?
        var errorMessage: String?
    }
    
    
    struct Transaction: Decodable {
        var status: String?
        var txHash: String?
        var errorMessage: String?
    }
}
