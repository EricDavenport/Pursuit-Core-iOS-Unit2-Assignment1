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
    

    var gameStart = TicTacToeBrain()
    
    var gameRunning = true
    var player = 1
    var playerOneMoves = [Int]()
    var playerTwoMoves = [Int]()
    
    
    
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
            playerOneMoves.append(currentSpot)
            gameStart.emptyAr[currentSpot] = player
                   player = 2
            gameButton.isEnabled = false
               } else {
                   gameButton.setBackgroundImage(UIImage(named: "circle"), for: UIControl.State.normal)
            playerTwoMoves.append(currentSpot)
            gameStart.emptyAr[currentSpot] = player
                   player = 1
                   print("\(player)")
            gameButton.isEnabled = false
                   
               }
        print(gameStart.emptyAr)
        
        winnerCheck()
    }
    func winnerCheck() {
        for each in gameStart.winningChances {
            //for eachOne in each {
            if gameStart.emptyAr[each[0]] == 1 && gameStart.emptyAr[each[1]] == 1 && gameStart.emptyAr[each[2]] == 1 {
                    winningLabel.text = "Player one wins"
                } else if gameStart.emptyAr[each[0]] == 2 && gameStart.emptyAr[each[1]] == 2 && gameStart.emptyAr[each[2]] == 2 {
                    winningLabel.text = "Player two wins"
                }
        //}
    }
}
}
