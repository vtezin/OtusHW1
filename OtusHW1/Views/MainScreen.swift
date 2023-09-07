//
//  ContentView.swift
//  OtusHW1
//
//  Created by user on 06.09.2023.
//

import SwiftUI

struct MainScreen: View {
    @EnvironmentObject private var appState: AppState
    
    var body: some View {
        TabView(selection: $appState.currentTab) {
            TimerScreen()
                .tabItem {
                    Label("Timer", systemImage: "clock")
                }
                .tag(MainScreenTabs.timer)
            TimerListScreen()
                .tabItem {
                    Label("Timers", systemImage: "folder")
                }
                .tag(MainScreenTabs.timerList)
            NewTimerScreen()
                .tabItem {
                    Label("New", systemImage: "plus.circle")
                }
                .tag(MainScreenTabs.addTimer)
        }
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
