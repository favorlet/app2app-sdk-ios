//
//  ContentViewModel.swift
//  FavorletApp2App_Example
//
//  Created by evahpirazzi on 2022/12/08.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import Foundation
import FavorletApp2App


class ContentViewModel {
    
    private let tempComponent = TempComponent()
    
    
    
    func requestPrint() {
        tempComponent.testMethod(msg: "TEST")
    }
    
    
}
