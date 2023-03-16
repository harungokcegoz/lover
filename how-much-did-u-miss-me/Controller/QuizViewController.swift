//
//  QuizViewController.swift
//  how-much-did-u-miss-me
//
//  Created by Harun Gökçegöz on 15/03/2023.
//

import UIKit

class QuizViewController: UIViewController {
    @IBOutlet var questionArea: UILabel!
    @IBOutlet var answerA: UIButton!
    @IBOutlet var answerB: UIButton!
    @IBOutlet var answerC: UIButton!
    @IBOutlet var answerD: UIButton!
    
//
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "How Much Do You Love Me?"
    }



}
