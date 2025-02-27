//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

struct QuizQuestion {
    var question : String
    var isTrue : Bool
    
    init(question: String, isTrue: Bool) {
        self.question = question
        self.isTrue = isTrue
    }
}


class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    
    @IBOutlet weak var trueBtn: UIButton!
    @IBOutlet weak var falseBtn: UIButton!
    
    let questions = [
        QuizQuestion(question: "Four + Two = Six?", isTrue: true),
        QuizQuestion(question: "10 - 5 = 3", isTrue: true),
        QuizQuestion(question: "Lion is an animal", isTrue: true),
        QuizQuestion(question: "Cat have 2 legs & 2 arms", isTrue: false)
    ]
    var currentQuestionIndex : Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        renderQuestion()
    }
    
    
    @IBAction func onButtonPressed(_ sender: UIButton) {
        let currentQuestion : QuizQuestion = questions[currentQuestionIndex]
        
        let userAnswer : Bool = sender.currentTitle! == "True" ? true : false
        
        if userAnswer == currentQuestion.isTrue  {
            print("Correct!")
        } else {
            print("Incorrect!")
        }
        
        if currentQuestionIndex == questions.count - 1 {
            currentQuestionIndex = 0
        }else {
            currentQuestionIndex += 1
        }
        
        renderQuestion()
    }
    
    func renderQuestion() {
        questionLabel.text = questions[currentQuestionIndex].question
    }
    

}

