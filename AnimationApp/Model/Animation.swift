//
//  Animation.swift
//  AnimationApp
//
//  Created by Kate on 11.12.2022.
//

import SpringAnimation

struct Animation {

    let name: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    var description: String {
    """
preset: \(name)
curve: \(curve)
force: \((force * 100).rounded() / 100)
duration: \((duration * 100).rounded() / 100)
delay: \((delay * 100).rounded() / 100)

"""
    }
}

let animations = AnimationPreset.allCases
let curves = AnimationCurve.allCases

extension Animation {
    static func getAnimation() -> Animation {
        Animation(
            name: animations.randomElement()?.rawValue ?? "pop",
            curve: curves.randomElement()?.rawValue ?? "easeIn",
            force: Float.random(in: 0.5...2),
            duration: Float.random(in: 0.5...1.5),
            delay: Float.random(in: 0.3...0.7))
    }
}
