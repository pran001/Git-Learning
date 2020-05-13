


// Lazy init with closures

//Problem:- How to initialize an object with a closure?

import UIKit

// Unconventional view
let box : UIView = {
    
    let view = UIView()
    return view
}()


// create UI Component

let buttonSize = CGRect(x: 0, y: 0, width: 100, height: 100)

// VC One
let pranBtn = UIButton(frame: buttonSize)
pranBtn.backgroundColor = .black
pranBtn.titleLabel?.text = "Click Me"
pranBtn.titleLabel?.textColor = .white

//VC two
//require same type of button so don't repeat code above

func createButton(enterTitle: String) -> UIButton {
    let button = UIButton(frame: buttonSize)
    button.backgroundColor = .black
    button.titleLabel?.text = enterTitle
    return button
}
createButton(enterTitle: "Enter")

//Introduce unconventional way

struct Human {
    init() {
        print("Hello")
    }
}

let createClosure = { () -> Human in
    let human = Human()
    return human
}

//Create uiView unconventional way

let myView : UIView = { () -> UIView in
    
    let view = UIView()
    view.backgroundColor = .black
    return view
}()

let myOwnView : UIView = {
    
    let view = UIView()
    view.backgroundColor = .red
    return view
}()

// Lazy :- To increase the pergormance of system
//lazy can not be used with let
//lazy can not be used with the computed property

class IntentMathProblem {
    lazy var complexNumber : Int = {
    return 1 * 1
    } ()
}
let problem = IntentMathProblem() // no value for complexNumber

problem.complexNumber  // now complexNumber 1
