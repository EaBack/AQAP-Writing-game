//
//  ViewController.swift
//  AQAPWriteGame
//
//  Created by Edgar Backer on 2023-03-27.
//

import UIKit

class ViewController: UIViewController {

    let segueIdGoToGame = "GoToGame"
    let segueEndGame = "GameEnded"
    let segueStartScreen = "GoBackToOne"
    let seguePlayAgain = "StartNewGame"
    
    @IBOutlet weak var rulesLabel: UILabel!
    
    
    @IBOutlet weak var pickLevel: UIPickerView!
    
    var levels = ["Easy", "Intermediat", "Hard"]
    var timelimits = [60,40,20]
    var selectedLevel: String?
    var selectedTimeLimit: Int?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        rulesLabel.text = "Welcome to AQAP Write game! The game where you write As Quick As Possible. In this game you will be shown words which you need to write in the field below. You have 5 s for each word. 1 point/word or -1 for each mistake. Each game is 10 rounds. Can you make the highscore? "
        
    }

    @IBAction func StartGame(_ sender: UIButton) {
        performSegue(withIdentifier: segueIdGoToGame, sender: self)
        
    }
    
    @IBAction func EndGame(_ sender: Any, forEvent event: UIEvent) {
        //configure so that automatically screen 3 opens when game is done
    }
    
    @IBAction func BackToStart(_ sender: UIButton) {
        performSegue(withIdentifier: segueStartScreen, sender: self)
    }
    
    
    @IBAction func PlayAgain(_ sender: UIButton) {
        performSegue(withIdentifier: seguePlayAgain, sender: self)
    }
    
}

