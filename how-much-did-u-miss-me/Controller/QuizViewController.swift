//
//  QuizViewController.swift
//  how-much-did-u-miss-me
//
//  Created by Harun Gökçegöz on 15/03/2023.
//

import UIKit

class QuizViewController: UIViewController {
    @IBOutlet var scenario: UILabel!
    @IBOutlet var questionArea: UILabel!
    @IBOutlet var answerA: UIButton!
    @IBOutlet var answerB: UIButton!
    @IBOutlet var answerC: UIButton!
    @IBOutlet var answerD: UIButton!
    @IBOutlet var myStackView: UIStackView!
    
    var quizHandler = QuizHandler()
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "How Much Do You Love Me?"
        setupLabels()
        quizHandler.startQuiz()
        showCurrentQuestion()
    }
    
    func setupLabels() {
        scenario.numberOfLines = 0
        questionArea.numberOfLines = 0
        
      
        scenario.adjustsFontSizeToFitWidth = true
        scenario.minimumScaleFactor = 2
        scenario.lineBreakMode = .byWordWrapping
        questionArea.adjustsFontSizeToFitWidth = true
        questionArea.minimumScaleFactor = 2
        questionArea.lineBreakMode = .byWordWrapping
    }
    
    
    func showCurrentQuestion() {
        if quizHandler.hasMoreQuestions() {
            let question = quizHandler.getCurrentQuestion()
            scenario.text = question.scenario
            questionArea.text = question.question
            answerA.setTitle(question.options[0], for: .normal)
            answerB.setTitle(question.options[1], for: .normal)
            answerC.setTitle(question.options[2], for: .normal)
            answerD.setTitle(question.options[3], for: .normal)
        } else {
            showAlertWithResult()
        }
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle?.prefix(1) ?? ""
        _ = quizHandler.answerSelected(String(userAnswer))
        moveToNextQuestionOrShowResult()
    }
    
    func moveToNextQuestionOrShowResult() {
        quizHandler.moveToNextQuestion()
        showCurrentQuestion()
    }
    
    func showAlertWithResult() {
        let percentageScore = quizHandler.getPercentageScore()
        let message = quizHandler.getMessageForScore(Int(percentageScore))
        
        let alertController = UIAlertController(title: "Quiz Ended",
                                                message: "\(message)",
                                                preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Retry", style: .default) { _ in
        }
        
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
        
    }
    
    
}
