import UIKit
import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true


func getData() {
    
    let session  = URLSession.shared
    let myUrl = URL(string: "https://jsonplaceholder.typicode.com/todos/")
    
    let task = session.dataTask(with: myUrl!) { (data, response, error) in
        
        if error == nil{
            
            let httpResponse = response as! HTTPURLResponse
            
            if (httpResponse.statusCode == 200){
                
                let jsonData = try? JSONSerialization.jsonObject(with: data!, options: .mutableContainers)
                
                print(jsonData!)
            }
        }
    }
    task.resume()
}

getData()


