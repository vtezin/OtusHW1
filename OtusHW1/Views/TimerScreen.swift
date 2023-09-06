//
//  FirstScreen.swift
//  OtusHW1
//
//  Created by user on 06.09.2023.
//

import SwiftUI

struct TimerScreen: View {
    @EnvironmentObject private var appState: AppState
    
    var body: some View {
        List {
            Button {
                appState.currentTab = .timerList
            } label: {
                Image(systemName: "gear")
            }
        }
    }
}

struct TimerScreen_Previews: PreviewProvider {
    static var previews: some View {
        TimerScreen()
    }
}
