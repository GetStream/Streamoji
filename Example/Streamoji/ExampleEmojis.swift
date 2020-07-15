//
//  ExampleEmojis.swift
//  Streamoji_Example
//
//  Created by Matheus Cardoso on 30/06/20.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Streamoji

let exampleEmojis: [String: EmojiSource] = [
    // from assets (GIF)
    "baby_yoda": .imageAsset("baby-yoda-soup.gif"),
    "banana_dance": .imageAsset("bananadance.gif"),
    "excuse_me": .imageAsset("excuseme.gif"),
    "party_parrot": .imageAsset("party_parrot.gif"),
    "this_is_fine": .imageAsset("this-is-fine-fire.gif"),
    "homer_disappear": .imageAsset("homer-disappear.gif"),
    "carlton": .imageAsset("carlton.gif"),
    
    // from assets (still image)
    "what": .imageAsset("what.png"),
    
    // from remote url
    "let_me_in": .imageUrl("https://github.com/GetStream/Streamoji/blob/main/meta/emojis/let_me_in.gif?raw=true"),
    
    // from unicode
    "smiley": .character("😄"),
    "heart": .character("❤️"),
    
    // aliases
    "banana": .alias("banana_dance"),
    "parrot": .alias("party_parrot")
]
