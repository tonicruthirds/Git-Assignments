
import UIKit

class FirstViewController: UIViewController {
    
    let testValues = NSUserDefaults.standardUserDefaults()

    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showTestValues()
        
    }
    
    func showTestValues(){
        
        let sentence = testValues.stringForKey("test_string")
        
        let number = testValues.stringForKey("test_number")
        
        let values = ((sentence)! + (number)!)
        
        textView.text = values
    }

}
