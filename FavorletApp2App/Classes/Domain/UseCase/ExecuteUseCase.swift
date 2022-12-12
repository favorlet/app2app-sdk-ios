//
//  ExecuteUseCase.swift
//  FavorletApp2App
//
//  Created by evahpirazzi on 2022/12/08.
//

import Foundation
import SwiftUI

class ExecuteUseCase {
    
    @Environment(\.openURL) var openURL
    
    
    func execute(
        requestId: String
    ) {
        let deeplinkUrl = URL(string: "https://favorlet.page.link/?link=https://favorlet.io?requestId=\(requestId)")
        
        guard deeplinkUrl != nil else {
            return
        }
        openURL.callAsFunction(deeplinkUrl!)
    }
    
    
}
