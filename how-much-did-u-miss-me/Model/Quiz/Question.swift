//
//  Question.swift
//  how-much-did-u-miss-me
//
//  Created by Harun Gökçegöz on 15/03/2023.
//

import Foundation


struct Question {
    let scenario: String
    let question: String
    let options: [String]
    let answer: String
    
    init(scenario: String, question: String, options: [String], answer: String) {
        self.scenario = scenario
        self.question = question
        self.options = options
        self.answer = answer
    }
}
