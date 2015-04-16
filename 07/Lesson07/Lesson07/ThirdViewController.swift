import UIKit
//
//class ThirdViewController: UIViewController {
//
//    @IBOutlet weak var thirdVcTextView: UITextView!
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        ThirdViewController().saveFile()
//        
//        
//    }
//
//    @IBAction func saveFile(sender: AnyObject) {
//        
//        let fileName = "thirdvc.plist"
//        
//        let docDirectory = NSFileManager.defaultManager().URLsForDirectory(NSSearchPathDirectory.DocumentDirectory, inDomains: NSSearchPathDomainMask.UserDomainMask).last as NSURL
//        
//        let saveIt = docDirectory.URLByAppendingPathComponent(fileName)
//        
//        thirdVcTextView.text = fileName
//        
//    }
//}
//
