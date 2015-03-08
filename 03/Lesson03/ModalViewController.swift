
import UIKit

class ModalViewController: UIViewController {

    
    @IBAction func dismissModal(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
        
    }

}