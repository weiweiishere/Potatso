//
//  Potatso_SS_ClipApp.swift
//  Potatso SS Clip
//
//  Created by WeiWei on 3/11/2020.
//  Copyright © 2020 TouchingApp. All rights reserved.
//

import SwiftUI

@main
struct Potatso_SS_ClipApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
