import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
 
    var emojiImages = ["emoji0", "emoji1", "emoji2", "emoji3", "emoji4", "emoji5", "emoji6", "emoji7", "emoji8", "emoji9"]
    var randomNumber = 3

    @IBOutlet var imageView: UIImageView!
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
        
      
        let currentDate = Date()

        let timeInterval = currentDate.timeIntervalSince(targetDate)
        let hours = Int(timeInterval / 3600)
        
 

     
        progressLabel.text = "I miss you this big: \(Int(hours))%"
        getRandomNumber()
        print(randomNumber)
        imageView.image = UIImage(named: emojiImages[randomNumber])
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: emojiImages[randomNumber])
        progressLabel.text = "Enter the last date that we were together below:"
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
