//
//  ViewController.swift
//  Quiz
//
//  Created by Kyle Hoffpauir on 1/10/18.
//  Copyright © 2018 Kyle Hoffpauir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   @IBOutlet var questionLabel: UILabel!
   @IBOutlet var answerLabel: UILabel!
   
   override func viewDidLoad() {
      super.viewDidLoad()
      questionLabel.text = questions[currentQuestionIndex]
   }
   
   let questions: [String] =
   [
      "What is 7 + 7?",
      "What is the capital of Vermont?",
      "What is cognac made from?"
   ]
   
   let answers: [String] =
   [
      "14",
      "Montpelier",
      "Grapes"
   ]
   var currentQuestionIndex: Int = 0
   
   
   @IBAction func showNextQuestion(_ sender: UIButton)
   {
      currentQuestionIndex += 1
      if currentQuestionIndex == questions.count
      {
         currentQuestionIndex = 0
      }
      let question: String = questions[currentQuestionIndex]
      questionLabel.text = question
      answerLabel.text = "???"
   }
   
   @IBAction func showAnswer(_ sender: UIButton)
   {
      let answer: String = answers[currentQuestionIndex]
      answerLabel.text = answer
   }
}

