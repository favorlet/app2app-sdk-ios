//
//  App2AppSignMessage.swift
//  App2AppExample
//
//  Created by evahpirazzi on 2022/11/28.
//

import Foundation

struct App2AppSignMessage: Codable {
    var from: String
    var value: String
    
    
    func convertParams() -> [String: Any] {
        return [
            "from": self.from,
            "value": self.value
        ]
    }
}
