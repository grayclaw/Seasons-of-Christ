//
//  Christmas_CelebrationApp.swift
//  Christmas Celebration
//
//  Created by Brian Homer Jr on 11/19/25.
//

import SwiftUI
import CoreData

@main
struct Christmas_CelebrationApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
