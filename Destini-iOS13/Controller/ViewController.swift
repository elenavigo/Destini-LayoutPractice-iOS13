//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleText: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.nextStory(choice: sender.currentTitle!)
        updateUI()
    }
    
    func updateUI() {
        titleText.text = storyBrain.getTitle()
        button1.setTitle(storyBrain.getChoice1(), for: .normal)
        button2.setTitle(storyBrain.getChoice2(), for: .normal)
    }
    
}

