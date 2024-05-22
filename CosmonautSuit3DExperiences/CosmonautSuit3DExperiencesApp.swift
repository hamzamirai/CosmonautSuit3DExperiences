//
//  CosmonautSuit3DExperiencesApp.swift
//  CosmonautSuit3DExperiences
//
//  Created by Hamza Chaouki on 25/4/2024.
//

import SwiftUI

@main
struct CosmonautSuit3DExperiencesApp: App {
    var body: some Scene {
        WindowGroup (id: "Window"){
            ContentView()
        }

        // Volumes
        WindowGroup (id: "Volume"){
            AstraunoutExperience()
        }
        .windowStyle(.volumetric)
    }
}
