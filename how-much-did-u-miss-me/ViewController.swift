//
//  ViewController.swift
//  how-much-did-u-miss-me
//
//  Created by Harun Gökçegöz on 07/03/2023.
//

import UIKit

class ViewController: UIViewController {
    
    var progressClass: Progress!
    let emojiImages = ["emoji0", "emoji10", "emoji20", "emoji30", "emoji40", "emoji50", "emoji60", "emoji70", "emoji80", "emoji90"]
    let choices = ["We had a phone call(10 points)", "We had a video call(20 points)", "We finally met(100 points)", "I sent a photo(50 points)"]
    var timer: Timer?
    

    @IBOutlet var emojiImageView: UIImageView!
    @IBOutlet var progressView: UIProgressView!
    @IBOutlet var percentageLabel: UILabel!

    @IBAction func phoneCall(_ sender: UIButton) {
        progressClass.updateProgress(by: -10.0)
    }
    
    @IBAction func videoCall(_ sender: UIButton) {
        progressClass.updateProgress(by: -20.0)
    }
    
    @IBAction func met(_ sender: UIButton) {
        progressClass.resetProgress()
    }
    
    
    @IBAction func photo(_ sender: UIButton) {
        progressClass.updateProgress(by: -50.0)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        progressClass = Progress(viewController: self)
        updateProgressView()
        startTimer()
    }
    
    func updateProgressView() {
        let firstImageName = emojiImages[0]
        let firstImage = UIImage(named: firstImageName)
        emojiImageView.image = firstImage
        let progressPercentage = progressClass.progressPercentage
        let index = Int(progressPercentage / 10.0)
        emojiImageView.image = UIImage(named: emojiImages[index])
        progressView.setProgress(Float(progressPercentage / 100.0), animated: true)
        percentageLabel.text = "\(Int(progressPercentage))%"
    }
        
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 60, target: self, selector: #selector(updateProgress), userInfo: nil, repeats: true)
    }
    
    func stopTimer() {
        timer?.invalidate()
        timer = nil
    }
    
    @objc func updateProgress() {
        progressClass.updateProgress(by: 1.0)
        updateProgressView()
    }

}

