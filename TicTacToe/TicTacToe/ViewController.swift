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
        
        winningLabel.text = "Player 1 turn"
    // Do any additional setup after loading the view, typically from a nib.
  }

    @IBAction func gameButtonPressed(_ gameButton: GameButton) {
        
        var player: Int = 1
        
        print("ROW: \(gameButton.row) COL: \(gameButton.col)")
        
        if player == 1 {
            gameButton.setBackgroundImage(UIImage(named: "xmark"), for: UIControl.State.normal)
            
            print("\(player)")
        }
        player += 1
        
        if player == 2 {
            gameButton.setBackgroundImage(UIImage(named: "circle"), for: UIControl.State.normal)
            
            
            print("\(player)")
        }
        player -= 1
       
        
    }
    
}

