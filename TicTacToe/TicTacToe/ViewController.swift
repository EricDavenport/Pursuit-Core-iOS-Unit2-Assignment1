//
//  ViewController.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet var gameButtons: [GameButton]!
    
    
    
    @IBOutlet weak var newGameButton: UIButton!
    @IBOutlet weak var winningLabel: UILabel!
    
    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

    @IBAction func gameButtonPressed(_ gameButton: GameButton) {
        
        print("ROW: \(gameButton.row)\nCOL: \(gameButton.col)")
    }
    
}

