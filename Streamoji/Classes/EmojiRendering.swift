//
//  EmojiRendering.swift
//  Nuke
//
//  Created by Matheus Cardoso on 03/07/20.
//

import Foundation
import Nuke

public extension EmojiRendering {
    static let highestQuality = EmojiRendering(quality: .highest)
    static let highQuality = EmojiRendering(quality: .high)
    static let mediumQuality = EmojiRendering(quality: .medium)
    static let lowQuality = EmojiRendering(quality: .low)
    static let lowestQuality = EmojiRendering(quality: .lowest)
}

public struct EmojiRendering {
    enum Quality {
        case lowest, low, medium, high, highest
    }
    
    var quality: Quality
}
