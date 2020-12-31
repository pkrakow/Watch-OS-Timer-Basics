//
//  Watch_OS_Timer_BasicsApp.swift
//  Watch OS Timer Basics WatchKit Extension
//
//  Created by Paul Krakow on 12/31/20.
//

import SwiftUI

@main
struct Watch_OS_Timer_BasicsApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
