//
//  AppState.swift
//  OtusHW1
//
//  Created by user on 06.09.2023.
//

import Combine

class AppState: ObservableObject {
    @Published var selectedTimer: Timer?
    @Published var timerForEdit: Timer?
    @Published var currentTab: Tabs = .timer
    @Published var timers = Timer.testData
}

enum Tabs {
    case timer
    case timerList
    case addTimer
}
