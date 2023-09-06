//
//  SecondScreen.swift
//  OtusHW1
//
//  Created by user on 06.09.2023.
//

import SwiftUI

struct TimerListScreen: View {
    @EnvironmentObject private var appState: AppState
    
    var body: some View {
        NavigationView {
            List(appState.timers) { timer in
                NavigationLink {
                    TimerEditView(timer: timer)
                } label: {
                    Label(timer.description, systemImage: "timer")
                }
            }
            .navigationTitle("My timers")
        }
    }
}

struct SecondScreen_Previews: PreviewProvider {
    static var previews: some View {
        TimerListScreen()
    }
}
