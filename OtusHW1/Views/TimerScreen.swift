//
//  FirstScreen.swift
//  OtusHW1
//
//  Created by user on 06.09.2023.
//

import SwiftUI

struct TimerScreen: View {
    @EnvironmentObject private var appState: AppState
    @State private var selectedTimer: Timer?
    
    var body: some View {
        List {
            ForEach(appState.timers, id: \.id) { timer in
                Button {
                    selectedTimer = timer
                } label: {
                    TimerRowView(timer: timer, bold: timer == selectedTimer)
                }
            }
            
            if let timer = selectedTimer {
                HStack {
                    TimerRowView(timer: timer)
                    Spacer()
                    Button {
                        appState.timerForEdit = timer
                        appState.currentTab = .timerList
                    } label: {
                        Text("Edit")
                    }
                }
            } else {
                Text("Select timer")
            }
        }
    }
}

struct TimerScreen_Previews: PreviewProvider {
    static var previews: some View {
        TimerScreen()
    }
}
