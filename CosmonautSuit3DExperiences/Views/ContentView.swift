//
//  ContentView.swift
//  CosmonautSuit3DExperiences
//
//  Created by Hamza Chaouki on 25/4/2024.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {

    @Environment(\.openWindow) private var openWindow

    var body: some View {
        ZStack {
          Image("astronaut 1")
                .resizable()
                .scaledToFill()
                .cornerRadius(46)

            Button("Explore more") {
                openWindow(id: "Volume")
            }
            .controlSize(.extraLarge)

        }

    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
