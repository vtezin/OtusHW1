//
//  SecondScreen.swift
//  OtusHW1
//
//  Created by user on 06.09.2023.
//

import SwiftUI

struct TimerListScreen: View {
    @EnvironmentObject private var appState: AppState
    
    @State private var goToEditSelectedTimer = false
    @State private var timerForEditOnAppear: Timer?
    
    var body: some View {
        NavigationView {
            Group {
                List {
                    ForEach(appState.timers, id: \.id) {timer in
                        NavigationLink {
                            TimerEditScreen(timer: timer)
                        } label: {
                            TimerRowView(timer: timer)
                        }
                    }
                    if let selectedTimer = timerForEditOnAppear {
                        NavigationLink(destination: TimerEditScreen(timer: selectedTimer),
                                       isActive: $goToEditSelectedTimer) { EmptyView() }
                    }
                }
            }
            .navigationTitle("My timers")
            .onAppear {
                if appState.timerForEdit != nil {
                    goToEditSelectedTimer = true
                    timerForEditOnAppear = appState.timerForEdit
                    appState.timerForEdit = nil
                } else {
                    timerForEditOnAppear = nil
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct TimerListScreen_Previews: PreviewProvider {
    static var previews: some View {
        TimerListScreen()
    }
}
