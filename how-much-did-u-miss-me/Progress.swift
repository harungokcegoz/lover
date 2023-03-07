//
//  Progress.swift
//  how-much-did-u-miss-me
//
//  Created by Harun Gökçegöz on 07/03/2023.
//

import Foundation

class Progress {
    var progressPercentage: Double = 0.0
    weak var viewController: ViewController?
    
    init(viewController: ViewController) {
        self.viewController = viewController
    }
    
    func updateProgress(by amount: Double) {
        progressPercentage += amount
        if progressPercentage > 100.0 {
            progressPercentage = 100.0
        } else if progressPercentage < 0.0 {
            progressPercentage = 0.0
        }
    }
    
    func resetProgress() {
        progressPercentage = 0.0
        viewController?.stopTimer()
    }
}

