

//Capture lists in Closure


var a = 0
var b = 0

//Design closure
let newClosure = {
    print(a,b)
}
newClosure()

//Design Closure Array

var closureArray : [ () -> ()] = []
var i = 0

for _ in 1...5 {

    closureArray.append {
        print(i)
    }
    i += 1
}
closureArray[0]()  //0-> 5
closureArray[3]()   //3-> 5

//Reference Type closure

var c = 0
var d = 0

let smartClosure: () -> () = {
    () in print(c,d)
}
smartClosure()
c = 6
d = 6

smartClosure()

// Capture list , copy

let smarterClosure: () -> () = { [c,d] in
    print(c,d)
}

smarterClosure()
c = 10
d = 10
smarterClosure()


