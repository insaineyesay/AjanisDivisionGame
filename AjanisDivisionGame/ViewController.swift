//
//  ViewController.swift
//  AjanisDivisionGame
//
//  Created by Michael Agee on 2/3/19.
//  Copyright © 2019 Ajira LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomNumber1 = Int.random(in: 1...100)
    var randomNumber2 = Int.random(in: 1...50)
    var answer: Int = 0
    var remainder: Int = 0
    
    
    @IBOutlet weak var randomNumberText1: UILabel!
    @IBOutlet weak var randomNumberText2: UILabel!
    @IBOutlet weak var answerText1: UITextField!
    @IBOutlet weak var answerText2: UITextField!
    @IBOutlet weak var checkMyAnswer: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        getRandomNumbers()
    }
    
    func getRandomNumbers() {
        
        randomNumber1 = Int.random(in: 1...100)
        randomNumber2 = Int.random(in: 1...50)
        randomNumberText1.text = String(randomNumber1)
        randomNumberText2.text = String(randomNumber2)
        resetGame()
    }
    
    func resetGame() {
        answerText1.text = ""
        answerText2.text = ""
        answerText1.becomeFirstResponder()
    }

    @IBAction func generateNumbers(_ sender: Any) {
        getRandomNumbers()
    }
    
    func getTheAnswer() -> String {
        
        answer = randomNumber1 / randomNumber2
        remainder = randomNumber1 - (answer * randomNumber2)
        return "The answer is \(answer) with a remainder of \(remainder)"
    }
    
    @IBAction func checkMyAnswer(_ sender: Any) {
        let correctAnswer = getTheAnswer()
        let answer1 = answerText1?.text
        let answer2 = answerText2?.text
        
        if (answer1 == String(answer) && answer2 == String(remainder)) {
            print("You got the anser right!")
        }
    }
    
}

