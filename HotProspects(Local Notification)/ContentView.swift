//
//  ContentView.swift
//  HotProspects(Local Notification)
//
//  Created by Elexoft on 07/04/2025.
//

// iOS has a frame called user notifications and it does create notifications that are shown to the user. Now there are two types of these one is a remote notifications that comes from a server and other are the local notifications that comes from code scheduled locally in our application. Now remote notifications do require a server to work your server talks to apple's push notification service apns which then talks to user devices in comparison though local notifications are really easy to use and provide a lot of power without a lot of work.

import SwiftUI
import UserNotifications

struct ContentView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    
    var body: some View {
        VStack {
            Button("Request Permission") {
                // first
                UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { success, error in
                    if success {
                        print("All set!")
                    } else if let error = error {
                        print(error.localizedDescription)
                    }
                }
            } //: BUTTON
            
            Button("Schedule Notification") {
                // second
                let content = UNMutableNotificationContent()
                content.title = "Feed the dogs"
                content.subtitle = "They look hungry"
                content.sound = UNNotificationSound.default
                
                let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
                
                let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
                
                UNUserNotificationCenter.current().add(request)
            } //: BUTTON
        } //: VSTACK
    }
}

// MARK: - PREVIEW

#Preview {
    ContentView()
}
