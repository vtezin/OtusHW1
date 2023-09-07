//
//  AppState.swift
//  OtusHW1
//
//  Created by user on 06.09.2023.
//

import Combine

class AppState: ObservableObject {
    @Published var currentTab: MainScreenTabs = .timer
    @Published var timers = Timer.testData
    @Published var selectedTimer: Timer?
    @Published var timerForEdit: Timer?
}

enum MainScreenTabs {
    case timer
    case timerList
    case addTimer
}
