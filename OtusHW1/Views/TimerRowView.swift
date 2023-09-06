//
//  TimerRowView.swift
//  OtusHW1
//
//  Created by user on 06.09.2023.
//

import SwiftUI

struct TimerRowView: View {
    let timer: Timer
    let bold: Bool
    
    init(timer: Timer) {
        self.timer = timer
        bold = false
    }
    
    init(timer: Timer, bold: Bool) {
        self.timer = timer
        self.bold = bold
    }
    
    var body: some View {
        Label(timer.description, systemImage: "timer")
            .fontWeight(bold ? .bold : .regular)
    }
}

struct TimerRowView_Previews: PreviewProvider {
    static var previews: some View {
        TimerRowView(timer: Timer.testData.first!)
    }
}
