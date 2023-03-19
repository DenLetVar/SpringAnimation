//
//  Animation.swift
//  SpringAnimation
//
//  Created by Denis on 19.03.2023.
//

import Foundation

struct Animation {
    
    let name: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
        """
        preset: \(name)
        curve: \(curve)
        force: \(String(format: "%.02f", force))
        duration: \(String(format: "%.02f", duration))
        delay: \(String(format: "%.02f", delay))
        """
        
    }
    
    static func getRandomAnimation() -> Animation {
        Animation(name: DataManager.shared.animations.randomElement()?.rawValue ?? "slideLeft",
                  curve: DataManager.shared.curves.randomElement()?.rawValue ?? "easeIn",
                  force: Double.random(in: 0...1.5),
                  duration: Double.random(in: 0...2),
                  delay: 0.3
        )
    }
}
                  
