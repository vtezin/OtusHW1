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
        VStack {
            HStack {
                if let timer = appState.selectedTimer {
                    TimerRowView(timer: timer)
                } else {
                    Label("Select timer", systemImage: "arrow.down")
                }
            }
            .padding()
            
            
            List {
                ForEach(appState.timers, id: \.id) { timer in
                    HStack {
                        Button {
                            appState.selectedTimer = timer
                        } label: {
                            TimerRowView(timer: timer, bold: timer == appState.selectedTimer)
                        }
                        Spacer()
                        Button {
                            appState.timerForEdit = timer
                            appState.currentTab = .timerList
                        } label: {
                            Image(systemName: "pencil")
                        }
                    }
                    .buttonStyle(.plain)
                }
            }
        }
    }
}

struct TimerScreen_Previews: PreviewProvider {
    static var previews: some View {
        TimerScreen()
    }
}
