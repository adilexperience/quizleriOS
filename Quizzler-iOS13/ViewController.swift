//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    
    @IBOutlet weak var trueBtn: UIButton!
    @IBOutlet weak var falseBtn: UIButton!
    
    let questions = [
        ["Four + Two = Six?", "True"],
        ["10 - 5 = 3", "True"],
        ["Lion is an animal", "True"],
        ["Cat have 2 legs & 2 arms", "False"],
    ]
    var currentQuestionIndex : Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        renderQuestion()
    }
    
    
    @IBAction func onButtonPressed(_ sender: UIButton) {
        let userAnswer : String = sender.currentTitle!
        let actualAnswer : String = questions[currentQuestionIndex][1]
        
        if userAnswer == actualAnswer {
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
        questionLabel.text = questions[currentQuestionIndex][0]
    }
    

}

