//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Juan Rodriguez  on 7/9/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation
struct QuizBrain {
    var questionNumber = 0
    var score = 0
    let quiz = [
        Question(q: "Animals that eat both plants and meat are called bothivores", a: "False"),
        Question(q: "The capital of Florida is Orlando", a: "False"),
        Question(q: "Pi day is celebrated on March 14", a: "True"),
        Question(q: "The capital of Florida is Orlando", a: "False"),
        Question(q: "Ringo Starr is the youngest Beatle", a: "False"),
        Question(q: "Chickpeas is the main ingredient in falafel", a: "True"),
        Question(q: "The Great Pyramid of Giza’s construction was launched by Ramses", a: "False"),
        Question(q: "Wassile Kadinsky is considered the pioneer of abstract art", a: "True"),
        Question(q: "Cosette was a character in Les Misérables", a: "True")
    ]
    
    func getQuestionText() -> String {
            return quiz[questionNumber].text
        }
        
        func getProgress() -> Float {
            return Float(questionNumber) / Float(quiz.count)
        }
        
         mutating func nextQuestion() {
            
            if questionNumber + 1 < quiz.count {
                questionNumber += 1
            } else {
                questionNumber = 0
                score = 0
            }
        }
        
        mutating func checkAnswer(userAnswer: String) -> Bool {
            if userAnswer == quiz[questionNumber].answer {
                score += 1
                return true
            } else {
                return false
            }
        }
    
        func getScore() -> Int {
            return score
        }
    }

