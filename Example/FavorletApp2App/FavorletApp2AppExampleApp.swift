//
//  FavorletApp2AppExampleApp.swift
//  FavorletApp2App_Example
//
//  Created by evahpirazzi on 2022/12/07.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import SwiftUI
import FavorletApp2App


@main
struct FavorletApp2AppExampleApp: App {

    
    init() {
        DependencyContainer.defined(by: module {
            factory { RequestConnectWalletUseCase() as RequestConnectWalletUseCase }
            
        })
    }
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
