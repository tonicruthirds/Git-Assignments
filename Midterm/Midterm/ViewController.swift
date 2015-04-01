import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    var firstInput = Int()
    var secondInput = Int()
    var isTypingNumber = false
    var result = Int()
    var operation = ""
 
    @IBAction func numberTapped(sender: AnyObject) {
        var number = sender.currentTitle
        if isTypingNumber == true {
            resultLabel.text = resultLabel.text! + number!!
        } else {
            resultLabel.text = number
        }
        isTypingNumber = true
    }
    
    @IBAction func calculationTapped(sender: AnyObject) {
        isTypingNumber = false
        firstInput = resultLabel.text!.toInt()!
        operation = sender.currentTitle!!
    }
  
    @IBAction func equalTapped(sender: AnyObject) {
        secondInput = resultLabel.text!.toInt()!
        if operation == "+" {
            result = firstInput + secondInput
        } else if operation == "-" {
            result = firstInput - secondInput
        } else if operation == "x" {
            result = firstInput * secondInput
        } else {
            
            result = firstInput / secondInput
            if firstInput % secondInput != 0 {
                
                var someFloat = Double(firstInput) / Double(secondInput)
                resultLabel.text = "\(someFloat)"
                return
            }
            
        }
        resultLabel.text = "\(result)"
        
    }

    @IBAction func clearTapped(sender: AnyObject) {
        firstInput = 0
        secondInput = 0
        isTypingNumber = false
        result = 0
        resultLabel.text = "\(0)"
    }
    
    @IBAction func emojiChatTapped(sender: AnyObject) {
        resultLabel.text! = "👽 Take me to your leader. 👽"
    }
    
    @IBAction func emojiMonkeyTapped(sender: AnyObject) {
        resultLabel.text! = "👹👹👹👹👹"
        
    }
    
    @IBAction func percentageTapped(sender: AnyObject) {
        var percent = Double(resultLabel.text!.toInt()!)
        resultLabel.text! = "\(percent / 100) %"
      
    }
    
    @IBAction func plusMinusTapped(sender: AnyObject) {
        var plusMinus = Double(resultLabel.text!.toInt()!)
        resultLabel.text! = "\(plusMinus * (-1))"
    }


}

