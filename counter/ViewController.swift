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
    var displayCount: Int? {
        didSet {
            guard let unwrappedDisplayCount = displayCount else {
                print("Display Score is nil")
                return
            }
            counterLabel.text = "\(unwrappedDisplayCount)"
        }
    }

    
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
        
    }
    
    @IBAction func countButtonPressed(_ sender: UIButton) {
        
        if sender == incrementButton {
            changeCount(action: .plus)
        } else {
            changeCount(action: .minus)
        }
    }
    
    @IBAction func resetButtonPressed(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Reset", message: "Are you sure you want to reset the counter to zero?", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "No", style: .default, handler: nil))
        alertController.addAction(UIAlertAction(title: "Yes", style: .default, handler: { _ in
            self.changeCount(action: .reset)
        }))
        present(alertController, animated: true, completion: nil)

    }
    

    func changeCount(action: Task) {
        switch action {
        case .plus:
            displayCount = counter.action(task: .plus)
        case .minus:
            displayCount = counter.action(task: .minus)
        case .reset:
            displayCount = counter.action(task: .reset)
        }
    }
    
}

