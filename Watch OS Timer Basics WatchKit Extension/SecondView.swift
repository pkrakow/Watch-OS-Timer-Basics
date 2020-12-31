//
//  SecondView.swift
//  Watch OS Timer Basics WatchKit Extension
//
//  Created by Paul Krakow on 12/31/20.
//

import SwiftUI

struct SecondView: View {
    // By making this a binding variable, it will ensure that the value gets passed between the two views
    @Binding var secondScreenShown:Bool
    @State var timerVal:Int
    
    var body: some View {
        VStack {
            if timerVal > 0 {
                Text("Time Remaining")
                    .font(.system(size: 14))
                Text("\(timerVal)")
                    .font(.system(size: 40))
                    .onAppear(){
                        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) {
                            (timer) in if self.timerVal > 0 {
                                self.timerVal -= 1
                            }
                        }
                    }
                Text("Seconds")
                    .font(.system(size: 14))
                Button(action: { self.secondScreenShown = false }) {
                    Text("Cancel")
                        .foregroundColor(.red)
                }
            } else {
                Button(action: { self.secondScreenShown = false }) {
                    Text("Done")
                        .foregroundColor(.green)
                }
                
            }
        }
    }
}
