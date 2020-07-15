//
//  EmojiRendering.swift
//  Nuke
//
//  Created by Matheus Cardoso on 03/07/20.
//

import Foundation
import Nuke

public extension EmojiRendering {
    static let highestQuality = EmojiRendering(quality: .highest, scale: 1)
    static let highQuality = EmojiRendering(quality: .high, scale: 1)
    static let mediumQuality = EmojiRendering(quality: .medium, scale: 1)
    static let lowQuality = EmojiRendering(quality: .low, scale: 1)
    static let lowestQuality = EmojiRendering(quality: .lowest, scale: 1)
}

public struct EmojiRendering {
    public enum Quality {
        case lowest, low, medium, high, highest
    }
    
    var quality: Quality
    var scale: Float
    
    public init(quality: EmojiRendering.Quality, scale: Float) {
        self.quality = quality
        self.scale = scale
    }
}
