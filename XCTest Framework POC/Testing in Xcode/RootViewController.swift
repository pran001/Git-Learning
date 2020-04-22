

import UIKit

class RootViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var yearTextField: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var switchButton: UISwitch!
    @IBOutlet weak var registerButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func switchPressed(_ sender: UISwitch) {
        checkTextFields()
    }
    
    
    @IBAction func registerPressed(_ sender: UIButton) {
        errorLabel.text = ""
        
       let newUser = User()
        newUser.email = emailTextField.text!
        newUser.password = passwordTextField.text!
        newUser.yearofBirth = yearTextField.text!
        newUser.terms = switchButton.isOn
        
        let returnMessag = newUser.checkForm()
        
        if returnMessag == nil {
            errorLabel.text = "You have been successfully registered"
        } else {
            errorLabel.text = returnMessag
        }
        
        
        
    }
    
    func checkForm(email: String) -> String? {
        if email == "" {
            return "Missing Email"
        }
        
        
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        
        if emailPred.evaluate(with: email) == false {
            return "Incorrect Email"
        }
        
        return nil
    }
    
    
    @IBAction func textFieldChanged(_ sender: UITextField) {
        
       checkTextFields()
        
    }
    
    
    func checkTextFields() {
        if emailTextField.text != "" && passwordTextField.text != "" && yearTextField.text != "" && switchButton.isOn {
                   registerButton.isEnabled = true
               } else {
                   registerButton.isEnabled = false
               }
    }

}

