//
//  RegisterViewControllerTests.swift
//  CognizantAssignmentTests
//
//  Created by Francis Adewale on 23/04/2021.
//

import XCTest
@testable import CognizantAssignment

class RegisterViewControllerTests: XCTestCase {
    
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    var sut: RegisterViewController!

    
    override func setUp() {
        super.setUp()
        let rootController = loadRootViewController()
        sut = rootController.stepController
        

    }

    override func tearDown(){
        sut = nil
        super.tearDown()
        
    }
    //MARK: - Controller Tests
    func testUsernameTextField_usernameIsNilErrorThrown() {
        //given
        sut.usernameField?.text = nil
        
        //when
        sut.registerButton?.isSelected = true
        
        //then
        
        XCTAssertThrowsError(try sut.throwUsernameNilError())
        
        
    }
    

    
    func testPasswordTextField_passwordIsNilErrorThrown() {
        
        //given
        sut.passwordField?.text = nil
        
        //when
        sut.passwordField?.isSelected = true
        
        //then
        
        XCTAssertThrowsError(try sut.throwPasswordNilError())
        
    }
    
    

    

}
