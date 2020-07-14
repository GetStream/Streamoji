//
//  ExampleEmojis.swift
//  Streamoji_Example
//
//  Created by Matheus Cardoso on 30/06/20.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Streamoji

let exampleEmojis: [String: EmojiSource] = [
    "party_parrot": .imageUrl("https://ppaas.herokuapp.com/partyparrot?overlay=&overlayWidth=20&overlayHeight=20&overlayOffsetX=0&overlayOffsetY=0"),
    "charmander_dancing": .imageUrl("https://emojis.slackmojis.com/emojis/images/1469223471/679/charmander_dancing.gif?1469223471"),
    "troll_face": .imageUrl("https://emojis.slackmojis.com/emojis/images/1463602125/429/troll.png?1463602125"),
    "smiley": .character("😄"),
    "heart": .character("❤️"),
    "parrot": .alias("party_parrot")
]
