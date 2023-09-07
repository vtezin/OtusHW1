//
//  ThirdScreen.swift
//  OtusHW1
//
//  Created by user on 06.09.2023.
//

import SwiftUI

struct NewTimerScreen: View {
    @State private var sheetIsPresented = false
    
    var body: some View {
        Button {
            sheetIsPresented = true
        } label: {
            Label("New timer", systemImage: "plus.circle")
                .imageScale(.large)
        }
        .sheet(isPresented: $sheetIsPresented) {
            TimerEditScreen()
        }
    }
}

struct NewTimerScreen_Previews: PreviewProvider {
    static var previews: some View {
        NewTimerScreen()
    }
}
