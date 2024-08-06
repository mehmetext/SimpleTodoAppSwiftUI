//
//  SimpleTodoAppApp.swift
//  SimpleTodoApp
//
//  Created by Mehmet Konukçu on 6.08.2024.
//

import FirebaseCore
import SwiftUI

@main
struct SimpleTodoAppApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
