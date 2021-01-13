import Foundation
import UIKit

class tableTV: UIViewController,  UITextFieldDelegate, UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
//    {
//        return true
//    }
    
 
    @IBOutlet var tableview : UITableView!
    
        override func viewDidLoad() {
        super.viewDidLoad()
            tableview.delegate = self
//            tableview.dataSource = self
            
        }
    
        
}
extension ViewController: UITableViewDelegate {
    
}
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",for : indexPath)
        return cell
    }
    
    
}


