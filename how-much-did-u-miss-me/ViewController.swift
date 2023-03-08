import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
 
    var emojiImages = ["emoji0", "emoji1", "emoji2", "emoji3", "emoji4", "emoji5", "emoji6", "emoji7", "emoji8", "emoji9"]
    var randomNumber = 3

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var progressBar: UIProgressView!
    @IBOutlet var progressLabel: UILabel!
    @IBOutlet var dateTextField: UITextField!
    
  
    

    @IBAction func submitButtonTapped(_ sender: UIButton) {
        // Get the selected date from the date picker
        guard let selectedDate = dateTextField.text, !selectedDate.isEmpty else {
            // Show an error message if the date field is empty
            let alert = UIAlertController(title: "Error", message: "Please select a date and time", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            present(alert, animated: true)
            return
        }
        
        // Create a date formatter to convert the selected date to a Date object
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy HH:mm"
        
        guard let targetDate = dateFormatter.date(from: selectedDate) else {
            // Show an error message if the date field is not in the correct format
            let alert = UIAlertController(title: "Error", message: "Please enter a valid date and time", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            present(alert, animated: true)
            return
        }
        
        // Calculate the time interval between the current date and the target date
        let currentDate = Date()
//        let timeInterval = targetDate.timeIntervalSince(currentDate)
        let timeInterval = currentDate.timeIntervalSince(targetDate)
        let hours = Int(timeInterval / 3600)
        
        // Calculate the progress value
        var progressValue: Float = 0.0
        
        // Set the progress value to 0 if the time interval is negative
        if hours > 100 {
            progressValue = 100.0
        } else {
            progressValue = (Float(hours))
        }
        
        // Update the progress bar and label
        progressBar.progress = progressValue
        progressLabel.text = "\(Int(hours))%"
      
        getRandomNumber()
        print(randomNumber)
        imageView.image = UIImage(named: emojiImages[randomNumber])
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: emojiImages[randomNumber])
        progressBar.progress = 0.0
        progressLabel.text = "0%"
        dateTextField.delegate = self
    }
    
    @objc func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func getRandomNumber(){
        randomNumber = Int.random(in: 0...9)
    }

}

extension Date {
    init?(from dateString: String, format: String) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        if let date = dateFormatter.date(from: dateString) {
            self = date
        } else {
            return nil
        }
    }
}
