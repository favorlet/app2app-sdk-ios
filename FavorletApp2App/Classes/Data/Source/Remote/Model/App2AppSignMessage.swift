//
//  App2AppSignMessage.swift
//  App2AppExample
//
//  Created by evahpirazzi on 2022/11/28.
//

import Foundation

public struct App2AppSignMessage: Codable {
    var from: String
    var value: String
    
    
    public init(
        from: String,
        value: String
    ) {
        self.from = from
        self.value = value
    }
    
    
    public func convertParams() -> [String: Any] {
        return [
            "from": self.from,
            "value": self.value
        ]
    }
}
