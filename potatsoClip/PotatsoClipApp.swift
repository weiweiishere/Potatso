//
//  PotatsoClipApp.swift
//  PotatsoClip
//
//  Created by WeiWei on 11/12/2020.
//  Copyright © 2020 TouchingApp. All rights reserved.
//

import SwiftUI

@main
struct PotatsoClipApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
