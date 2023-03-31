//
//  GameViewController.swift
//  AQAPWriteGame
//
//  Created by Edgar Backer on 2023-03-31.
//

import UIKit

class GameViewController: UIViewController {
    
    
    var word = Words()
    
    var randomWord : String = ""
                      
    @IBOutlet weak var displayWordLabel: UILabel!
    
    @IBOutlet weak var gameTimer: UILabel!
    
    @IBOutlet weak var score: UILabel!
    
    @IBOutlet weak var countDownLabel: UILabel!
    
    @IBOutlet weak var startButton: UIButton!
    
    var timer: Timer?
    var countDown = 3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        randomWord = word.listOfWords.randomElement() ?? " "
        print(randomWord)
    }
    
    @IBOutlet weak var userInput: UITextView!// this doesn't work, needs to be function where the word displayed is same as word written
    
    @IBAction func startButtonTapped(_ sender: UIButton) {
        startButton.isHidden = true
        countDownLabel.isHidden = false
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(countDownAction), userInfo: nil, repeats: true)
    }
    
    @objc func countDownAction() {
        countDown -= 1
        countDownLabel.text = "\(countDown)"
        if countDown == 0 {
            countDownLabel.isHidden = true
            displayWordLabel.isHidden = false
            timer?.invalidate()
            let randomIndex = Int.random(in: 0..<randomWord.count)
            displayWordLabel.text = randomWord
             }
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
}

