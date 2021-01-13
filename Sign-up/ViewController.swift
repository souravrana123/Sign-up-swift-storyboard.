import UIKit

class ViewController: UIViewController,  UITextFieldDelegate {
    
    @IBOutlet weak var signupLb: UILabel!
    
    @IBOutlet weak var usernameTf: UITextField!
    @IBOutlet weak var passwordTf: UITextField!
    @IBOutlet weak var nameTf: UITextField!
    @IBOutlet weak var phonenumberTf: UITextField!
    @IBOutlet weak var submitBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.usernameTf.delegate = self
        self.passwordTf.delegate = self
        self.nameTf.delegate = self
        self.phonenumberTf.delegate = self
        
        self.usernameTf.returnKeyType = UIReturnKeyType.next
        self.passwordTf.returnKeyType = UIReturnKeyType.continue
        self.nameTf.returnKeyType = UIReturnKeyType.emergencyCall
        self.phonenumberTf.returnKeyType = UIReturnKeyType.done
        //    self.submitBtn.delegate = self button does not have delegate
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
       //if desired
        return true
    }
    
    @IBAction func submitBtnTapped(_ sender: Any)
    {
        //print("User-name: \(usernameTf.text!)\npassword: \(passwordTf.text!)name: \(nameTf.text!)\nphone-number: \(phonenumberTf.text!)")
    }
    
    
}

