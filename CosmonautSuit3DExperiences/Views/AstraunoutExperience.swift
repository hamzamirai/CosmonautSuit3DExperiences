//
//  AstraunoutExperience.swift
//  CosmonautSuit3DExperiences
//
//  Created by Hamza Chaouki on 25/4/2024.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct AstraunoutExperience: View {
    var body: some View {
        RealityView { content in
            // Load the astraunoout model (an Enity)
            if let astrauntEntity = try? await Entity(named: "CosmonautSuit") {
                // Change starting position
                astrauntEntity.transform.translation = [0, -0.4, 0.3]

                // Start Animation
                if let animation = astrauntEntity.availableAnimations.first {
                    astrauntEntity.playAnimation(animation)
                }

                // Add Entity to RealityView
                content.add(astrauntEntity)
            }

        } placeholder: {
            ProgressView()
                .controlSize(.extraLarge)
                .glassBackgroundEffect()
        }

    }
}

#Preview {
    AstraunoutExperience()
}
