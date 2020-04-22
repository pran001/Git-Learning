
import XCTest

class Testing_in_XcodeUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        XCTAssertFalse(app.buttons["Register"].isEnabled)
        app.textFields["Email"].tap()
        app.textFields["Email"].typeText("a@a.com")
        app.textFields["Password"].tap()
        app.textFields["Password"].typeText("123")
        app.textFields["Year of birth"].tap()
        app.textFields["Year of birth"].typeText("1990")
        app.switches["switchLabel"].tap()
        XCTAssertTrue(app.buttons["Register"].isEnabled)
        
        let errorLable = app.staticTexts["errorLabel"]
        XCTAssertFalse(errorLable.exists)
        
        app.buttons["Register"].tap()
        XCTAssertTrue(errorLable.exists)
        
      
        

        // Use recording to get started writing UI tests.
                // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
//
//    let app = XCUIApplication()
//    app.textFields["Email"].tap()
//
//    let wKey = app/*@START_MENU_TOKEN@*/.keys["w"]/*[[".keyboards.keys[\"w\"]",".keys[\"w\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
//    wKey.tap()
//    wKey.tap()
//
//    let passwordTextField = app.textFields["Password"]
//    passwordTextField.tap()
//    passwordTextField.tap()
//
//    let yearOfBirthTextField = app.textFields["Year of birth"]
//    yearOfBirthTextField.tap()
//    passwordTextField.tap()
//    yearOfBirthTextField.tap()
//    yearOfBirthTextField.tap()
//    app.buttons["Register"].tap()
}
