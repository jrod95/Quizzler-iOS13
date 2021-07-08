//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
let question = [
    ["2 + 3 = 5", "True"],
    ["5 + 5 > 10", "False"],
    ["2 + 2 < 5", "True"]
]

var questionNumber = 0
var score = 0

class ViewController: UIViewController {
    
    //@IBOutlets
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIView!
    @IBOutlet weak var percentageCorrect: UIProgressView!
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        
        if question[questionNumber][1] == userAnswer {
            percentageCorrect.progress = 0.3
            print("right")
        }
        else{
            print("wrong")
        }
        if questionNumber < (question.count - 1){
            questionNumber += 1
            nextQuestion()
        }
        else{
            questionLabel.text = "Quiz Finished"
        }

    }
    override func viewDidLoad() {
        nextQuestion()
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func nextQuestion(){
        questionLabel.text = (question[questionNumber][0])
    }


}

