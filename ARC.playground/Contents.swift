

// Automatic Reference Counting
// Problem:- Retain cycle is formed due to the strong reference holding of each other
// Solution:- Declare any of the object reference as weak var

class Person {

    var name: String
    weak var job: Job?
    
    init(name:String) {
        debugPrint("init method of Person called")
        self.name = name
    }
    
    func printName() {
        debugPrint("Name is \(name)")
    }
    
    deinit {
        debugPrint("deinit called for Person class")
    }
}

class Job {
    
    var jobDescription: String
    var person: Person?
    
    init(jobDescription: String) {
        debugPrint("init called for job class")
        self.jobDescription = jobDescription
    }
    
    deinit {
        debugPrint("deinit called for job class")
    }
    
}

if (1 == 1) {
    
    let objPerson = Person(name: "Pranav Arjun")
    let objJob = Job(jobDescription: "Swift Programmer")
    
    //Retain Cycle is created if don't declare any of the object as weak
    objPerson.job = objJob
    objJob.person = objPerson
}





