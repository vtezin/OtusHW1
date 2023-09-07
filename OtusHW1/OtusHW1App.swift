//
//  OtusHW1App.swift
//  OtusHW1
//
//  Created by user on 06.09.2023.
//

import SwiftUI

@main
struct OtusHW1App: App {
    @StateObject var appState = AppState()
    
    var body: some Scene {
        WindowGroup {
            MainScreen()
                .environmentObject(appState)
        }
    }
}
