//
//  TimerEditView.swift
//  OtusHW1
//
//  Created by user on 06.09.2023.
//

import SwiftUI

struct TimerEditScreen: View {
    @Environment(\.presentationMode) private var presentationMode
    @EnvironmentObject private var appState: AppState
    
    let timer: Timer?
    @State private var hours = 0
    @State private var minutes = 0
    
    init() {
        timer = nil
    }
    
    init(timer: Timer) {
        self.timer = timer
        _hours = State(initialValue: timer.hours)
        _minutes = State(initialValue: timer.minutes)
    }
    
    var body: some View {
        VStack {
            TimePickerView(hours: $hours, minutes: $minutes)
                .navigationTitle("\(hours)h \(minutes)m")
                .navigationBarTitleDisplayMode(.inline)
            Button {
                done()
                presentationMode.wrappedValue.dismiss()
            } label: {
                Text("Done")
            }
        }
    }
}

// MARK: - Functions
extension TimerEditScreen {
    private func done() {
        let timerID = timer?.id ?? UUID()
        
        let newTimer = Timer(id: timerID, hours: hours, minutes: minutes)
        
        if let _ = timer, let index = appState.timers.firstIndex(where: {$0.id == timerID}) {
            appState.timers[index] = newTimer
            return
        }
        
        appState.timers.append(newTimer)
    }
}

struct TimerEditView_Previews: PreviewProvider {
    static var previews: some View {
        TimerEditScreen(timer: Timer.testData.first!)
    }
}
