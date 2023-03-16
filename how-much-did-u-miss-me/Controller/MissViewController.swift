import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
 
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var progressLabel: UILabel!
    @IBOutlet var dateTextField: UITextField!
    
    let emoji = EmojiHandler()
    

    @IBAction func submitButtonTapped(_ sender: UIButton) {

        guard let selectedDate = dateTextField.text, !selectedDate.isEmpty else {
            showAlert(title: "Error", message: "Please select a date and time")
            return
        }
        

        guard let targetDate = MissedTime.date(from: selectedDate, format: "dd/MM/yyyy HH:mm") else {
            showAlert(title: "Error", message: "Please enter a valid date and time")
            return
        }
        
        let currentDate = Date()
        let missedTime = MissedTime(startDate: targetDate, endDate: currentDate)
        let hours = missedTime.hoursElapsed()
        
        progressLabel.text = "I miss you this big: \(Int(hours))%"
        emoji.updateImage(with: emoji.getRandomNumber())
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "How Much Did U Miss Me?"
        imageView.image = UIImage(named: emoji.emojiImages[emoji.randomNumber])
        progressLabel.text = "Enter the last date that we were together below:"
        dateTextField.delegate = self
    }
    
    @objc func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }
    


}


