//
//  CreateAccountScreen.swift
//  MyTodoListUITests
//
//  Created by Michał Terlicki on 18/06/2022.
//

import XCTest
import MyTodoList

struct CreateAccountScreen: BaseScreen {
    let app: XCUIApplication
    
    // MARK: Identifiers
    
    private enum Identifiers {
        static let userNameField = "userNameTextfield"
        
        static let passwordField = "newAccountPasswordTextField"
        static let repeatPasswordField = "repeatPasswordTextField"
        
        static let createButton = "createNewAccountButton"
        static let cancelButton = "cancelButton"
        
        static let alertOKButton = "alertOkButton"
    }
    
    // MARK: Handlers
    
    func typeUserName (_ username: String) -> Self {
        tapTextField(Identifiers.userNameField)
        typeText(Identifiers.userNameField, username)
        return self
    }
    
    func tapUserNameTextfield () -> Self {
        tapTextField(Identifiers.userNameField)
        return self
    }
    
    func tapPasswordField () -> Self {
        tapSecureTextField(Identifiers.passwordField)
        return self
    }
    
    func typePassword (_ password: String) -> Self {
        tapSecureTextField(Identifiers.passwordField)
        typeSecureText(Identifiers.passwordField, password)
        return self
    }
    
    func tapRepeatPasswordField () -> Self {
        tapSecureTextField(Identifiers.repeatPasswordField)
        return self
    }
    
    func typeRepeatPassword (_ password: String) -> Self {
        tapSecureTextField(Identifiers.repeatPasswordField)
        typeSecureText(Identifiers.repeatPasswordField, password)
        return self
    }

    func tapCreateButton () -> ToDoListScreen {
        tapButton(Identifiers.createButton)
        return ToDoListScreen(app: app)
    }
    
    func tapCreateButtonWithError() -> Self {
        tapButton(Identifiers.createButton)
        return self
    }
    
    func tapCancelButton () -> LoginSreen{
        tapButton(Identifiers.cancelButton)
        return LoginSreen(app: app)
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
