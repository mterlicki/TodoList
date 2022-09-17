//
//  BaseTest.swift
//  MyTodoListUITests
//
//  Created by Michal Terlicki on 02/04/2022.
//  Copyright © 2022 Michal Terlicki. All rights reserved.
//

import XCTest
import MyTodoList

class BaseTest: XCTestCase {
    var app: XCUIApplication!

    override func setUp() {
        continueAfterFailure = false
        app = XCUIApplication()
        app.launchArguments = ["clearLocalData"]
        app.launch()
    }

    override func tearDown() {
        app.terminate()
    }
}
