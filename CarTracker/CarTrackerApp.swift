//
//  CarTrackerApp.swift
//  CarTracker
//
//  Created by Sebastian Frosch on 20.04.23.
//

import SwiftUI

@main
struct CarTrackerApp: App {
    var body: some Scene {
        WindowGroup {
            CarTrackerView(searchText: .constant(""))
        }
    }
}
