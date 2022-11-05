//
//  AddNewToDoTests.swift
//  MyTodoListUITests
//
//  Created by Michał Terlicki on 16/08/2022.
//

import XCTest

class AddNewToDoTests: BaseTest {
    
    override func setUp() {
        continueAfterFailure = false
        app = XCUIApplication()
        app.launchArguments = ["clearLocalData"]
        app.launchEnvironment = ["username": "username",
                                 "password": "pass",
                                 "isLogedin": "true"]
        app.launch()
    }
    
    func testTitleCannotBeEmpty () throws {
        ToDoListScreen(app: app)
            .tapAddButton()
            .tapSaveButtonWithError()
            .alertHasErrorMessage("Title cannot be empty")
    }
    
    func testAddNewTodoFromAddSomethingButton () throws {
        let title = "Todo added from add something button"
        
        ToDoListScreen(app: app)
            .tapAddSomethingButton()
            .typeToDoTilte(title)
            .tapSaveButton()
            .labelWithTextExists(title)
    }
    
    func testAddNewTodoFromAddButton () throws {
        let title = "Todo added from add button"
        
        ToDoListScreen(app: app)
            .tapAddButton()
            .typeToDoTilte(title)
            .tapSaveButton()
            .labelWithTextExists(title)
    }
}
