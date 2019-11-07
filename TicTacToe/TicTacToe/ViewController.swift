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
    
    @IBOutlet weak var playerOneWinLabel: UILabel!
    
    @IBOutlet weak var playerTwoWinLabel: UILabel!
    
    var gameStart = TicTacToeBrain()
    
    var gameRunning = true
    var player = 1
    var playerOneWins: Int = 0
    var playerTwoWins: Int = 0
    
    
    
    override func viewDidLoad() {
    super.viewDidLoad()
        
        winningLabel.text = "Player 1 turn"
    // Do any additional setup after loading the view, typically from a nib.
  }

    @IBAction func gameButtonPressed(_ gameButton: GameButton) {
        
        
        
        print("ROW: \(gameButton.row) COL: \(gameButton.col)")
       
        let currentSpot = gameButton.tag
       
        if  player == 1 {
                   gameButton.setBackgroundImage(UIImage(named: "xmark"), for: UIControl.State.normal)
                   print("\(player)")
            
            gameStart.emptyAr[currentSpot] = player
                   player = 2
            gameButton.isEnabled = false
               } else {
                   gameButton.setBackgroundImage(UIImage(named: "circle"), for: UIControl.State.normal)
            
            gameStart.emptyAr[currentSpot] = player
                   player = 1
                   print("\(player)")
            gameButton.isEnabled = false
                   
               }
        print(gameStart.emptyAr)
        
        winnerCheck()
    }
    //MARK: WINNER CHECK
    func winnerCheck() {
        for each in gameStart.winningChances {
            if gameStart.emptyAr[each[0]] == 1 && gameStart.emptyAr[each[1]] == 1 && gameStart.emptyAr[each[2]] == 1 {
                playerOneWins += 1
                    winningLabel.text = "Player one wins"
                playerOneWinLabel.text = "\(playerOneWins)"
                for eachButton in gameButtons {
                    eachButton.isEnabled = false
                }
                
                } else if gameStart.emptyAr[each[0]] == 2 && gameStart.emptyAr[each[1]] == 2 && gameStart.emptyAr[each[2]] == 2 {
                playerTwoWins += 1
                    winningLabel.text = "Player two wins"
                playerTwoWinLabel.text = "\(playerTwoWins)"
                for eachButton in gameButtons {
                    eachButton.isEnabled = false
                }
                }
    }
}
    //MARK: NEW GAME START
    
    @IBAction func newGameButtom(_ sender: UIButton) {
        //for each in gameStart.emptyAr {
            gameStart.emptyAr = [0,0,0,0,0,0,0,0,0]
        //}
        print(gameStart.emptyAr)
        for eachButton in gameButtons {
            eachButton.setBackgroundImage(nil, for: UIControl.State.normal)
            eachButton.isEnabled = true
        }
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
        playerTwoWins = 0
        playerOneWins = 0
        playerOneWinLabel.text = "\(playerOneWins)"
        playerTwoWinLabel.text = "\(playerTwoWins)"
    }
    
    
    
}
