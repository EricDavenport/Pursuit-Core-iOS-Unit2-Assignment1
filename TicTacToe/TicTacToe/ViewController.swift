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
    
//    var player: Int = 1
    var gameStart = TicTacToeBrain()
    
    var gameRunning = true
    var player = 1
    
    override func viewDidLoad() {
    super.viewDidLoad()
        
        winningLabel.text = "Player 1 turn"
    // Do any additional setup after loading the view, typically from a nib.
  }

    @IBAction func gameButtonPressed(_ gameButton: GameButton) {
        
        print("ROW: \(gameButton.row) COL: \(gameButton.col)")
       // gameStart.playAction(gameButton)
        let currentSpot = gameButton.tag
       
        if  player == 1 {
                   gameButton.setBackgroundImage(UIImage(named: "xmark"), for: UIControl.State.normal)
                   print("\(player)")
            gameStart.emptyAr[currentSpot] = player
                   player = 2
               } else {
                   gameButton.setBackgroundImage(UIImage(named: "circle"), for: UIControl.State.normal)
            gameStart.emptyAr[currentSpot] = player
                   player = 1
                   print("\(player)")
                   
               }
        print(gameStart.emptyAr)
        
        
    }
    
    
//

}
