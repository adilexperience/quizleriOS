//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Muhammad Adil Mehmood on 27/02/2025.
//  Copyright © 2025 The App Brewery. All rights reserved.
//

struct QuizBrain {
    let questions = [
        Question(q: "A slug's blood is green.", a: "True"),
        Question(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
        Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
        Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
        Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
        Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
        Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
        Question(q: "Google was originally called 'Backrub'.", a: "True"),
        Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
        Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
        Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
        Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")

    ]
    
    var currentQuestionIndex : Int = 0
    var score : Int = 0
    
    mutating func validateAnswer(_ userAnswer : String) -> Bool {
        var isCorrectAnswer : Bool = false
        
        if userAnswer == questions[currentQuestionIndex].a {
            isCorrectAnswer = true
            score += 1
        }
        
        return isCorrectAnswer
    }
    
    func currentQuestionTitle() -> String {
        return questions[currentQuestionIndex].q
    }
    
    func quizProgress() -> Float {
        return Float(currentQuestionIndex) / Float(questions.count)
    }
    
    func getScore() -> String {
        return "Score: \(score)"
    }
    
    mutating func moveToNextQuestion() {
        if currentQuestionIndex == questions.count - 1 {
            currentQuestionIndex = 0
            score = 0
        }else {
            currentQuestionIndex += 1
        }
    }
    
}
