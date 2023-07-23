//
//  SwiftUIApp2App.swift
//  SwiftUIApp2
//
//  Created by Rajesab N Y on 24/07/23.
//

import SwiftUI

@main
struct SwiftUIApp2App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
