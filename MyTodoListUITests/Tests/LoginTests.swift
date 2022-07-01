//
//  LoginTests.swift
//  MyTodoListUITests
//
//  Created by Michał Terlicki on 18/06/2022.
//

import XCTest

class LoginTests: BaseTest {

    func testUserNameCannotBeEmpty() throws{
        LoginSreen(app: app)
            .tapLogInButton()
            .alertHasErrorMessage("Username cannot be empty")
    }
    
    func testPasswordCannotBeEmpty() throws{
        LoginSreen(app: app)
            .tapUsername()
            .typeUsername("admin")
            .tapLogInButton()
            .alertHasErrorMessage("Password cannot be empty")
    }
    
    func testInvalidUsernameAndPassword() throws{
        LoginSreen(app: app)
            .tapUsername()
            .typeUsername("admin")
            .tapPassword()
            .typePassword("admin")
            .tapLogInButton()
            .alertHasErrorMessage("Wrong username or password")
    }
}
