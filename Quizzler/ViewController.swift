//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    
    let allQuestions = QuestionBank()
    var currentPosition: Int?
    var pickedAnswer: Bool = false
    var currentQuestion: Question? = nil
    var score: Int = 0
    var questionNumber: Int = 1
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
    }
    
    
    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1 {
            pickedAnswer = true
        } else {
            pickedAnswer = false
        }
        checkAnswer()
        questionNumber += 1
        nextQuestion()
    }
    
    
    func updateUI() {
        scoreLabel.text = "Score: \(score)"
        progressLabel.text = "\(questionNumber)/13"
        let newWidth = (UIScreen.main.bounds.width / 13) * CGFloat(questionNumber)
        let newFrame = CGRect(x: progressBar.frame.minX, y: progressBar.frame.minY, width: newWidth, height: progressBar.frame.height)
        progressBar.frame = newFrame
    }
    
    
    func nextQuestion() {
        let totalSize = allQuestions.list.count
        if totalSize > 0 {
            currentPosition = Int.random(in: 0 ..< totalSize)
            updateAllQuestionArray(position: currentPosition)
            updateUI()
        } else {
            let alert = UIAlertController(title: "Awesome", message: "You've finished all the questions, do you want to start over?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart" , style: .default) { (UIAlertAction) in
                self.startOver()
            }
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
    }
    
    
    func checkAnswer() {
        if pickedAnswer == currentQuestion?.answer {
            ProgressHUD.showSuccess("Success")
            score += 1
        } else {
            if score > 0 {
                score -= 0
            }
            ProgressHUD.showError("Wrong!")        }
    }
    
    
    func startOver() {
        allQuestions.addToList()
        questionNumber = 1
        score = 0
        initView()
    }
    
    func updateAllQuestionArray(position: Int?) {
        guard let position = position else {return}
        let questionReceived = allQuestions.list.remove(at: position)
        currentQuestion = questionReceived
        questionLabel.text = questionReceived.questionText
    }
    
    func initView () {
        currentPosition = allQuestions.list.indices.first
        updateUI()
        updateAllQuestionArray(position: currentPosition)
    }
}
