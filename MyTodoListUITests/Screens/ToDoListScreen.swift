//
//  ToDoListScreen.swift
//  MyTodoListUITests
//
//  Created by Michał Terlicki on 18/06/2022.
//

import XCTest
import MyTodoList

struct ToDoListScreen: BaseScreen {
    let app: XCUIApplication
    
    // MARK: Identifiers
    
    private enum Identifiers {
        //empty list
        static let addSomethingButton = "addSomethingButton"
        
        static let addNewToDoButton = "addNewTodoButton"
        static let logoutButton = "logoutButton"
        
        static let toDoList = "toDoList"
        
        static let deleteButton = "Delete"
    }
    
    // MARK: Handlers
    
    func tapAddButton () -> AddToDoScreen {
        tapButton(Identifiers.addNewToDoButton)
        return AddToDoScreen(app: app)
    }
    
    func tapAddSomethingButton () -> AddToDoScreen {
        tapButton(Identifiers.addSomethingButton)
        return AddToDoScreen(app: app)
    }
    
    func tapToDoListElementWith (_ title: String) -> Self {
        tapLabel(title)
        return self
    }
    
    func tapToDoListElemetnWith (_ position: Int) -> Self {
        tapTableViewCell(Identifiers.toDoList, position)
        return self
    }
    
    func swipeAndDeleteListElementWith (_ title: String) -> Self {
        swipeLeftCell(Identifiers.toDoList, title)
        tapButton(Identifiers.deleteButton)
        return self
    }
    
    // MARK: Assertions
    
    func labelWithTextExists (_ text: String) {
       labelExists(text)
    }
    
    func labelWithTextNotExists (_ text: String) {
        labelExists(text)
    }
    
}
