//
//  TimePicker.swift
//  OtusHW1
//
//  Created by user on 06.09.2023.
//

import UIKit
import SwiftUI

struct TimePickerView: UIViewRepresentable {
    @Binding var hours: Int
    @Binding var minutes: Int
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(self)
    }

    func makeUIView(context: UIViewRepresentableContext<TimePickerView>) -> UIDatePicker {
        let picker = UIDatePicker()
        picker.preferredDatePickerStyle = .wheels
        picker.datePickerMode = .countDownTimer
        
        picker.addTarget(context.coordinator, action: #selector(Coordinator.dateChanged), for: .valueChanged)
        
        return picker
    }
    
    func updateUIView(_ picker: UIDatePicker, context: UIViewRepresentableContext<TimePickerView>) {
        picker.countDownDuration = Double(hours * 60 * 60 + minutes * 60)
    }
    
    class Coordinator {
        let picker: TimePickerView
        
        init(_ picker: TimePickerView) {
            self.picker = picker
        }
        
        @objc func dateChanged(_ sender: UIDatePicker) {
            let minutesTotal = Int(sender.countDownDuration / 60)
            
            var newMinutes = minutesTotal % 60
            let newHours = Int(minutesTotal/60)
            
            if newMinutes == 0, newHours == 0 {
                newMinutes = 1
            }
            picker.hours = newHours
            picker.minutes = newMinutes
        }
    }
}
