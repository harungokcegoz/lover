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
        // Set the number of lines to 0 to allow the label to use as many lines as needed
        scenario.numberOfLines = 0
        questionArea.numberOfLines = 0
        
        // Adjust the font size to fit the available width
        scenario.adjustsFontSizeToFitWidth = true
        scenario.minimumScaleFactor = 0.5 // minimum font size (as a ratio of the original font size)
        scenario.lineBreakMode = .byWordWrapping // Break the text by words
        
        questionArea.adjustsFontSizeToFitWidth = true
        questionArea.minimumScaleFactor = 0.5 // minimum font size (as a ratio of the original font size)
        questionArea.lineBreakMode = .byWordWrapping // Break the text by words
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
