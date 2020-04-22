
import XCTest

class Testing_in_XcodeTests: XCTestCase {
    
    let newUser = User()

    override func setUp() {
        newUser.email = "a@a.com"
        newUser.password = "123"
        newUser.yearofBirth = "1990"
        newUser.terms = true
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testEmail() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
       
    
        XCTAssertNil(newUser.checkForm())
        
        newUser.email = ""
        XCTAssertNotNil(newUser.checkForm())
        
        newUser.email = "a"
        XCTAssertNotNil(newUser.checkForm())
        
        
    }
    
    func testPassword() {
        
        XCTAssertNil(newUser.checkForm())
        newUser.password = ""
        XCTAssertNotNil(newUser.checkForm())
    }
    
    func testAge() {
        XCTAssertNil(newUser.checkForm())
        newUser.yearofBirth = ""
        XCTAssertNotNil(newUser.checkForm())
        newUser.yearofBirth = "2020"
        XCTAssertNotNil(newUser.checkForm())
        newUser.yearofBirth = "ABC"
        XCTAssertNotNil(newUser.checkForm())
        newUser.yearofBirth = "1900"
        XCTAssertNotNil(newUser.checkForm())
    }
    
    func testTerms() {
        XCTAssertNil(newUser.checkForm())
        newUser.terms = false
        XCTAssertNotNil(newUser.checkForm())
        
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
