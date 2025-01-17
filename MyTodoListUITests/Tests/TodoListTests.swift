//
//  TodoListTests.swift
//  MyTodoListUITests
//
//  Created by Michał Terlicki on 16/08/2022.
//

import XCTest

class TodoListTests: BaseTest {
    
    override func setUp() {
        continueAfterFailure = false
        app = XCUIApplication()
        app.launchArguments = ["clearLocalData"]
        app.launchEnvironment = ["username": "username",
                                 "password": "pass",
                                 "isLogedin": "true",
                                 "titles": "one,two"]
        app.launch()
    }
    
    func testMarkTodoAsDone () throws {
        ToDoListScreen(app: app)
            .tapToDoListElementWith("one")
            .todoIsMarkedAsDone("one")
    }
    
    func testTodoIsNotDone () {
        ToDoListScreen(app: app)
            .tapAddButton()
            .typeToDoTilte("three")
            .tapSaveButton()
            .todoIsMarkedAsNotDone("three")
    }
    
    func testDeleteTodo () {
        ToDoListScreen(app: app)
            .swipeAndDeleteListElementWith("circle, one")
            .todoWithLabelNotExists("circle, one")
    }
}
