//
//  ExampleEmojis.swift
//  Streamoji_Example
//
//  Created by Matheus Cardoso on 30/06/20.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Streamoji

let path = "https://github.com/GetStream/Streamoji/blob/main/meta/emojis"
//https://github.com/GetStream/Streamoji/blob/main/meta/emojis/party_parrot.gif?raw=true
let exampleEmojis: [String: EmojiSource] = [
    "baby_yoda": .imageAsset("baby-yoda-soup.gif"),
    "banana_dance": .imageAsset("bananadance.gif"),
    "excuse_me": .imageAsset("excuseme.gif"),
    "party_parrot": .imageAsset("party_parrot.gif"),
    "this_is_fine": .imageAsset("this-is-fine-fire.gif"),
    "what": .imageAsset("what.png"),
    "homer_disappear": .imageAsset("homer-disappear.gif"),
    "let_me_in": .imageUrl("\(path)/let_me_in.gif?raw=true"),
    "smiley": .character("😄"),
    "heart": .character("❤️"),
    "banana": .alias("banana_dance"),
    "parrot": .alias("party_parrot")
]
