
import Foundation

class User {
    var email = ""
    var password = ""
    var yearofBirth = ""
    var terms = false
    
    func checkForm() -> String? {
          if email == "" {
              return "Missing Email"
          }
          
          
          let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
          let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
          
          if emailPred.evaluate(with: email) == false {
              return "Incorrect Email"
          }
        
        if password == "" {
            return "Missing Password"
        }
        
        if yearofBirth == "" {
            return "Year of birth cannot be empty"
        }
        
        let currentYear = Calendar.current.component(.year, from: Date())
        let yearOfBirth_num = Int(yearofBirth)
        if yearOfBirth_num == nil {
            return "Year of birth cannot be nil"
        }
        let age = currentYear - yearOfBirth_num!
        
        if age < 18 {
            return  "Age must be over 18"
        }
        
        if age > 100 {
            return "You are too old to register"
        }
        
        if terms == false {
            return "You must accept terms and conditions"
        }
     
          
          return nil
      }
}
