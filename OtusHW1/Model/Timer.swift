//
//  Timer.swift
//  OtusHW1
//
//  Created by user on 06.09.2023.
//

import Foundation

struct Timer: Identifiable, Equatable {
    var id: UUID
    
    let hours: Int
    let minutes: Int
     
    var description: String {
        "\(hours)h \(minutes)m"
    }
    
//    static func ==(lhs: Timer, rhs: Timer) -> Bool {
//        return lhs.id == rhs.id
//    }
    
    static var testData: [Timer] {
        var timers = [Timer]()
        
        timers.append(Timer(id: UUID(), hours: 1, minutes: 30))
        timers.append(Timer(id: UUID(),hours: 0, minutes: 5))
        timers.append(Timer(id: UUID(),hours: 0, minutes: 3))
        
        return timers
    }
}
