import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var secondVcTextView: UITextView!
    
    let secondTask = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showSettings()
        
    }
    
    func showSettings() {
        
        let slider = secondTask.stringForKey("settings_slider")
        
        let name = secondTask.stringForKey("settings_name")
//        
//        let secondTaskView = ((slider)! + (name)!)
//        
//         secondVcTextView.text = secondTaskView

        secondVcTextView.text = ("I wrote a function to display the slider and name, but I get an error when I run it. Check out my code to see the function. It's been commented out so the simulator will run.")
        
    }
}
