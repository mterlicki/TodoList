//
//  CreateAccountTests.swift
//  MyTodoListUITests
//
//  Created by Michał Terlicki on 16/08/2022.
//

import XCTest

class CreateAccountTests: BaseTest {

    func testUsernameCannotBeEmpty () throws {
        LoginSreen(app: app)
            .tapCreateAccountButton()
            .tapCreateButtonWithError()
            .alertHasErrorMessage("Username cannot be empty")
    }
    
    func testPasswordCannotBeEmpty () throws {
        LoginSreen(app: app)
            .tapCreateAccountButton()
            .typeUserName("admin")
            .tapCreateButtonWithError()
            .alertHasErrorMessage("Password cannot be empty")
    }
    
    func testPasswordAndRepeatPasswordDoNotMatch () throws {
        LoginSreen(app: app)
            .tapCreateAccountButton()
            .typeUserName("admin")
            .typePassword("pass")
            .typeRepeatPassword("passs")
            .tapCreateButtonWithError()
            .alertHasErrorMessage("Passwords do not match")
    }
    
    func testCreateAccountWithSuccess () throws {
        LoginSreen(app: app)
            .tapCreateAccountButton()
            .typeUserName("user1")
            .typePassword("password")
            .typeRepeatPassword("password")
            .tapCreateButton()
            
    }
}
