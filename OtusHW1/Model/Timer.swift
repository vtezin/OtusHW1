//
//  Timer.swift
//  OtusHW1
//
//  Created by user on 06.09.2023.
//

import Foundation

struct Timer: Identifiable, Equatable, Hashable {
    let id: UUID
    let hours: Int
    let minutes: Int
     
    var description: String {
        "\(hours)h \(minutes)m"
    }
    
    static var testData: [Timer] {
        var timers = [Timer]()
        
        timers.append(Timer(id: UUID(), hours: 1, minutes: 30))
        timers.append(Timer(id: UUID(),hours: 0, minutes: 5))
        timers.append(Timer(id: UUID(),hours: 0, minutes: 3))
        
        return timers
    }
}
