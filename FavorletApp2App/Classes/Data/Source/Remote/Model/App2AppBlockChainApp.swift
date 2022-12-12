//
//  App2AppBlockChainApp.swift
//  App2AppExample
//
//  Created by evahpirazzi on 2022/11/28.
//

import Foundation

public struct App2AppBlockChainApp: Codable {
    var name: String
    var successAppLink: String?
    var failAppLink: String?
    
    
    public init(
        name: String,
        successAppLink: String?,
        failAppLink: String?
    ) {
        self.name = name
        self.successAppLink = successAppLink
        self.failAppLink = failAppLink
    }
    
    
    public func convertParams() -> [String: Any?] {
        return [
            "name": self.name,
            "successAppLink": self.successAppLink,
            "failAppLink": self.failAppLink
        ]
    }
}
