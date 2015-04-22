import UIKit
import XCPlayground
//import SwiftyJSON

var str = "Hello, playground"

// Let asynchronous code run
XCPSetExecutionShouldContinueIndefinitely()

//TODO one: Write and call a function that make a successful network connection to google.com using core networking APIs, then print out the results.

let url = NSURL(string: "http://google.com/")!

let task = NSURLSession.sharedSession().dataTaskWithURL(url, completionHandler: { (data, response, error) -> Void in
    
    println(data)
    var string = NSString(data: data, encoding: NSUTF8StringEncoding)!
    println(string)
    println(response)
    println(error)
    
})
task.resume()


//TODO two: Write and call a function that makes a failing network connection (using core networking APIs) to http://generalassemb.ly/foobar.baz, a nonexistant page. Print out the status code and body of the response.

let url2 = NSURL(string: "http://generalassemb.ly/foobar.baz")!

let task2 = NSURLSession.sharedSession().dataTaskWithURL(url2, completionHandler: { (data, response, error) -> Void in
    
    println(data)
    var string = NSString(data: data, encoding: NSUTF8StringEncoding)!
    println(string)
    println(response)
    println(error)
    
})
task.resume()


//TODO three: Make a successful network connection to http://api.openweathermap.org/data/2.5/weather?q=New%20York,US, an API that speaks JSON using core networking APIs. Create a model class that corresponds to the JSON response object, populate it with the contents of that JSON using NSJSONSerialization, then print out the model.

let url3 = NSURL(string: "http://api.openweathermap.org/data/2.5/weather?q=New%20York,US")!

let task3 = NSURLSession.sharedSession().dataTaskWithURL(url3, completionHandler: { (data, response, error) -> Void in
    
    var responseDictionary = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.allZeros, error: nil) as! NSDictionary
    
    var children = responseDictionary["weather"] as! NSArray
    for child in children {
        var country = child["main"] as! String
        var main = child["description"] as! String
        
        
    }
    
})
task.resume()




//TODO four: Make a successful network connection to http://api.openweathermap.org/data/2.5/weather?q=New%20York,US, an API that speaks JSON. Populate a your above-defined model with the contents of that JSON using SwiftyJSON, then print out the model.

// I couldn't remember how to use SwiftyJSON. I commented out the parts below that made use of it b/c it wasn't working.

//var weather : JSON?

let url4 = NSURL(string: "http://api.openweathermap.org/data/2.5/weather?q=New%20York,US")!

let task4 = NSURLSession.sharedSession().dataTaskWithURL(url4, completionHandler: { (data, response, error) -> Void in
    
    //    if error != nil {
    //        return
    //    }
    //
    var responseDictionary = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.allZeros, error: nil) as! NSDictionary
    
    var children = responseDictionary["weather"] as! NSArray
    for child in children {
        var country = child["main"] as! String
        var main = child["description"] as! String
        
        //    self.weather = JSON(data: data)
        //
        //    dispatch_async(dispatch_get_main_queue(), {
        //        self.tableView.reloadData()
        //        self.refreshControl?.endRefreshing()
        //    })
    }
    })
    task.resume()







