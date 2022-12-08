//
//  ContentView.swift
//  FavorletApp2App_Example
//
//  Created by evahpirazzi on 2022/12/08.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    
    private let contentViewModel = ContentViewModel()
    
    var body: some View {
        
        VStack {
            Button(action: {
                contentViewModel.requestPrint()
            }) {
                Text("Print")
            }
        }
    }
}


