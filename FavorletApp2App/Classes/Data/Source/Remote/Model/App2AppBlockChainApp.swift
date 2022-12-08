//
//  App2AppBlockChainApp.swift
//  App2AppExample
//
//  Created by evahpirazzi on 2022/11/28.
//

import Foundation

struct App2AppBlockChainApp: Codable {
    var name: String
    var successAppLink: String?
    var failAppLink: String?
    
    
    func convertParams() -> [String: Any?] {
        return [
            "name": self.name,
            "successAppLink": self.successAppLink,
            "failAppLink": self.failAppLink
        ]
    }
}
