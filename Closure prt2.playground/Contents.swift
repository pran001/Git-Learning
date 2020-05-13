


//Problem:- can you pass/return a functon/functions to function

// function = globle closure

func hello() -> String {
    return "Hello"
}


var sumWithClosure = { (num1: Int, num2: Int) in return num1 + num2}

var returnString: () -> String = { () in "Hello"}


// Return closure indirectly

func returnClosure() -> ((Int,Int) -> Int) {
    return sumWithClosure
}

let returnedClosure = returnClosure()
returnClosure()(10,20)
returnedClosure(10,20)

// Return closure directly

func returnClosureDirectly() -> ((Int,Int) -> Int) {
    
    return { (num1: Int, num2: Int) in return num1 + num2 }
}

let returnedDirectly = returnClosureDirectly()
returnedDirectly(10,20)


//Pass Closure

func insertClosureBlock(closureBlock: () -> String) -> String {
    
    return closureBlock()
}

//pass closure indirectly
let returnValue = insertClosureBlock(closureBlock: returnString)
insertClosureBlock(closureBlock: hello)

let returnValue2 = insertClosureBlock(closureBlock: { () in "Hello"})

//pass closure diorectly
insertClosureBlock(closureBlock: {() in return "Hello Closure"})
insertClosureBlock(closureBlock: {"Hello Closure"})


let example = Array(1...100).filter{ $0 % 2 == 0}
print(example)

