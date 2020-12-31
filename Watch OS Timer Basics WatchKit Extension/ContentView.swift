//
//  ContentView.swift
//  Watch OS Timer Basics WatchKit Extension
//
//  Created by Paul Krakow on 12/31/20.
//

import SwiftUI

struct ContentView: View {
    @State var secondScreenShown = false
    @State var timerVal = 1
    
    var body: some View {
        VStack {
            Text("Start Timer for \(timerVal) seconds")
            
            Picker(selection: $timerVal, label: Text("")) {
                Text("1").tag(1)
                Text("5").tag(5)
                Text("10").tag(10)
                Text("15").tag(15)
            }
            
            NavigationLink(destination: SecondView(secondScreenShown: $secondScreenShown, timerVal: timerVal), isActive: $secondScreenShown, label: {Text("Go")})
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
