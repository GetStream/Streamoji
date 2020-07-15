//
//  ViewController.swift
//  Streamoji
//
//  Created by cardoso on 06/30/2020.
//  Copyright (c) 2020 cardoso. All rights reserved.
//

import Streamoji

class ViewController: UIViewController {
    let textView = UITextView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        textView.attributedText = NSAttributedString(string:
            """

            :banana_dance: Streamoji :party_parrot:
            :baby_yoda: This is a UITextView! :excuse_me:

            Supports:
            GIF :this_is_fine:
            Image :what:
            Local file :homer_disappear:
            Remote file :let_me_in:
            Unicode :smiley:

            """
        )
        
        
        
        textView.isEditable = true
        textView.textAlignment = .center
        textView.font = .systemFont(ofSize: 24)
        view.addSubview(textView)
        
        textView.frame = view.frame
        
        textView.configureEmojis(exampleEmojis, rendering: .highestQuality)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
