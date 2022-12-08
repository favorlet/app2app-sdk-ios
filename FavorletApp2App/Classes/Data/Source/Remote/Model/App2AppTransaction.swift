//
//  App2AppTransaction.swift
//  FavorletApp2App
//
//  Created by evahpirazzi on 2022/12/08.
//

import Foundation

struct App2AppTransaction: Codable {
    var from: String
    var to: String
    var value: String
    var abi: String
    var params: String
    var functionName: String
    
    
    func convertParams() -> [String: Any?] {
        return [
            "from": self.from,
            "to": self.to,
            "value": self.value,
            "abi": self.abi,
            "params": self.params,
            "functionName": self.functionName
        ]
    }
}
