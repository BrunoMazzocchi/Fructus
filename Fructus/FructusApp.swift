//
//  FructusApp.swift
//  Fructus
//
//  Created by Bruno Mazzocchi on 17/10/24.
//

import SwiftUI
import SwiftData

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            if (isOnboarding) {
                OnboardingView()
            } else {
                ContentView()
            }
        }
        .modelContainer(sharedModelContainer)
    }
}
