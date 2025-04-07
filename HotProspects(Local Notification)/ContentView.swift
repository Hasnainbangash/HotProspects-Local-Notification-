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
            } //: BUTTON
            
            Button("Schedule Notification") {
                // second
            } //: BUTTON
        }
        .padding()
    }
}

// MARK: - PREVIEW

#Preview {
    ContentView()
}
