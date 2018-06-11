//
//  ViewController.swift
//  counter
//
//  Created by David Haywood on 6/8/18.
//  Copyright © 2018 dfhaywood. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var counter = Counter()
    var displayCount = 0

    
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var decrementButton: UIButton!
    @IBOutlet weak var incrementButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var aboutButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        counterLabel.layer.cornerRadius = 15.0
        decrementButton.layer.cornerRadius = 15.0
        incrementButton.layer.cornerRadius = 15.0
        resetButton.layer.cornerRadius = 5.0
        aboutButton.layer.cornerRadius = 5.0
        
        counterLabel.text = String(displayCount)
        
    }
    
    @IBAction func countButtonPressed(_ sender: UIButton) {
        
        if sender == incrementButton {
            changeCount(action: .plus)
        } else {
            changeCount(action: .minus)
        }
    }
    
    @IBAction func resetButtonPressed(_ sender: Any) {
        
        changeCount(action: .reset)
        updateDisplay()
    }
    

    func changeCount(action: Task) {
        print("Before Action:\(counter.totalCount)")
        if action == .plus {
            displayCount = counter.action(task: .plus)
        } else if action == .minus {
            displayCount = counter.action(task: .minus)
        } else {
            displayCount = counter.action(task: .reset)
        }
         print("After Action:\(counter.totalCount)")
        updateDisplay()
    }
    
    func updateDisplay() {
        counterLabel.text = String("\(displayCount)")
    }
    
    
}

