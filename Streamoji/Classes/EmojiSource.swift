//
//  EmojiSource.swift
//  Streamoji
//
//  Created by Matheus Cardoso on 6/30/20.
//  Copyright © 2020 Stream, Inc. All rights reserved.
//

import Foundation

public enum EmojiSource: Codable, Hashable {
    case character(String)
    case imageUrl(String)
    case alias(String)
}

public extension EmojiSource {
    enum CodingKeys: CodingKey {
        case character, imageUrl, alias
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        switch container.allKeys.first {
        case .character:
            self = .character(try container.decode(String.self, forKey: .character))
        case .imageUrl:
            self = .imageUrl(try container.decode(String.self, forKey: .imageUrl))
        default:
            throw DecodingError.dataCorrupted(
                DecodingError.Context(
                    codingPath: container.codingPath,
                    debugDescription: "Unabled to decode enum."
                )
            )
        }
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        switch self {
        case .character(let character):
            try container.encode(character, forKey: .character)
        case .imageUrl(let imageUrl):
            try container.encode(imageUrl, forKey: .imageUrl)
        case .alias(let alias):
            try container.encode(alias, forKey: .alias)
        }
    }
}
