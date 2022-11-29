//
//  App2AppExampleApp.swift
//  App2AppExample
//
//  Created by evahpirazzi on 2022/11/22.
//

import SwiftUI
import DIKit


@main
struct App2AppExampleApp: App {
    
    init() {
        DependencyContainer.defined(by: module {
            
            factory { App2AppRepository() as App2AppRepository }
            
            factory { App2AppApi() as App2AppApi }
        })
    }
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
