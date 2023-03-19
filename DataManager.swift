//
//  DataManager.swift
//  SpringAnimation
//
//  Created by Denis on 19.03.2023.
//

import Spring

class DataManager {
    static let shared = DataManager()
    
    let animations = Spring.AnimationPreset.allCases
    
    let curves = Spring.AnimationCurve.allCases
    
    private init() {}
}
