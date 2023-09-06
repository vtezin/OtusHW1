//
//  ContentView.swift
//  OtusHW1
//
//  Created by user on 06.09.2023.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var appState: AppState
    
    var body: some View {
        TabView(selection: $appState.currentTab) {
            TimerScreen()
                .tabItem {
                    Label("Timer", systemImage: "clock")
                }
                .tag(Tabs.timer)
            TimerListScreen()
                .tabItem {
                    Label("Timers", systemImage: "folder")
                }
                .tag(Tabs.timerList)
            NewTimerScreen()
                .tabItem {
                    Label("New", systemImage: "plus.circle")
                }
                .tag(Tabs.addTimer)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
