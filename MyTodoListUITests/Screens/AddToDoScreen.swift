//
//  AddToDoScreen.swift
//  MyTodoListUITests
//
//  Created by Michał Terlicki on 18/06/2022.
//

import XCTest
import MyTodoList

struct AddToDoScreen: BaseScreen {
    let app: XCUIApplication
    
    // MARK: Identifiers
    
    private enum Identifiers {
        static let addToDoTextField = "toDoTextField"
        
        static let saveToDoButton = "saveTodoButton"
        
        static let backButton = "Todo List"
        
        static let alertOKButton = "addToDoAlertOKButton"
    }
    
    // MARK: Handlers
    
    func tapToDoTextField () -> Self {
        tapTextField(Identifiers.addToDoTextField)
        return self
    }
    
    func typeToDoTilte (_ title: String) -> Self {
        typeText(Identifiers.addToDoTextField, title)
        return self
    }
    
    func tapSaveButton () -> ToDoListScreen {
        tapButton(Identifiers.saveToDoButton)
        return ToDoListScreen(app: app)
    }
    
    func tapSaveButtonWithError () -> Self {
        tapButton(Identifiers.saveToDoButton)
        return self
    }
    
    func tapBackButton () -> ToDoListScreen {
        tapButton(Identifiers.backButton)
        return ToDoListScreen(app: app)
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
