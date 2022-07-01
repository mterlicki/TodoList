//
//  LoginScreen.swift
//  MyTodoListUITests
//
//  Created by Michał Terlicki on 18/06/2022.
//

import XCTest
import MyTodoList

struct LoginSreen: BaseScreen {
    let app: XCUIApplication
    
    // MARK: Identifiers
    
    private enum Identifiers {
        static let usernameField = "usernameTextField"
        static let passwordField = "passwordTextField"
        
        static let logInButton = "logInButton"
        static let createAccountButton = "createAccountButton"
        
        static let logInAlert = "logInAlert"
        static let alertOKButton = "alertOKButton"
    }
    
    // MARK: Handlers
    
    
    // Username
    func typeUsername(_ username: String) -> Self{
        tapTextField(Identifiers.usernameField)
        typeText(Identifiers.usernameField, username)
        return self
    }
    
    func tapUsername() -> Self{
        tapTextField(Identifiers.usernameField)
        return self
    }
    
    //Password
    func typePassword(_ password:String) -> Self{
        tapTextField(Identifiers.passwordField)
        typeText(Identifiers.passwordField, password)
        return self
    }
    
    func tapPassword() -> Self{
        tapTextField(Identifiers.passwordField)
        return self
    }
    
    // Buttons
    
    func tapLogInButton() -> ToDoListScreen{
        tapButton(Identifiers.logInButton)
        return ToDoListScreen(app: app)
    }
    
    func tapLogInButton() -> Self{
        tapButton(Identifiers.logInButton)
        return self
    }
    
    func tapCreateAccountButton() -> CreateAccountScreen{
        tapButton(Identifiers.createAccountButton)
        return CreateAccountScreen(app: app)
    }
    
    // Alert
    
    func tapAlertOKButton() -> Self{
        tapButton(Identifiers.alertOKButton)
        return self
    }
    
    // MARK: Assertions
    
    func alertHasErrorMessage(_ message: String){
        labelExists(message)
    }
}
