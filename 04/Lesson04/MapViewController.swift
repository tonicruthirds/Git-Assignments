
import UIKit

class MapViewController: UIViewController, UITextFieldDelegate    {

    @IBOutlet weak var textFieldOne: UITextField!
    @IBOutlet weak var textFieldTwo: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    var dogsAndBreedsDict = [String:String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textFieldTwo.becomeFirstResponder()
        textFieldTwo.backgroundColor = UIColor.blueColor()
        
    }

    func dogsAndBreeds() -> String {
        var key = textFieldOne.text
        var value = textFieldTwo.text
        return ("\(key) : \(value)")
        
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        tableView.reloadData()
        self.textFieldTwo.text=""
        textFieldTwo.resignFirstResponder()
        textFieldOne.backgroundColor = UIColor.redColor()
        return true
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("dogcell") as UITableViewCell
        
        return cell

    }
    
    



        /*
        TODO three: Add TWO text views and a table view to this view controller, either using code or storybaord. Accept keyboard input from the two text views. When the 'return' button is pressed on the SECOND text view, add the text view data to a dictionary. The KEY in the dictionary should be the string in the first text view, the VALUE should be the second.
        TODO four: Make this class a UITableViewDelegate and UITableViewDataSource that supply this table view with cells that correspond to the values in the dictionary. Each cell should print out a unique pair of key/value that the map contains. When a new key/value is inserted, the table view should display it.
        TODO five: Make the background of the text boxes in this controller BLUE when the keyboard comes up, and RED when it goes down. Start with UIKeyboardWillShowNotification and NSNotificationCenter.
        */
    
    
}
