

// Problem :- Why we use closures, () -> () ?

//Closure is a function without name and the func keyword

// fn sum 2 numbers

func sumTwoNumber(num1:Int, num2: Int) -> Int {
    return num1 + num2
}
sumTwoNumber(num1: 10, num2: 20)
var sumFunction = sumTwoNumber
sumFunction(10,20)


var sumClosure: (Int,Int) -> Int = { (num1:Int, num2: Int) -> Int in
    return num1 + num2
}
sumClosure(10,30)

var sumClosure1 = { (num1:Int, num2: Int) -> Int in
    return num1 + num2
}
sumClosure1(10,30)

var sumClosure2 = { (num1:Int, num2: Int) -> Int in
     num1 + num2
}
sumClosure2(10,30)

var sumClosure3: (Int,Int) -> Int = { $0 + $1}
sumClosure3(10,30)


// 
