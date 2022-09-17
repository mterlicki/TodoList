//
//  BaseScreen+Extenstions.swift
//  MyTodoListUITests
//
//  Created by Michał Terlicki on 28/05/2022.
//  Copyright © 2022 Michal Terlicki. All rights reserved.
//

import XCTest

extension BaseScreen{
    // MARK: Labels
    
    func labelExists(_ identifier:String){
        XCTAssertTrue(app.staticTexts[identifier].exists, "Label \(identifier) does not exist")
    }
    
    func labelNotExists(_ identifier:String){
        XCTAssertFalse(app.staticTexts[identifier].exists, "Label \(identifier) exists")
    }
    
    func tapLabel (_ identifier: String) {
        app.staticTexts[identifier].tap()
    }
    
    // MARK: Buttons
    
    func tapButton(_ identifier: String){
        app.buttons[identifier].tap()
    }
        
    // MARK: Text field
    
    func tapTextField(_ identifier: String){
        app.textFields[identifier].tap()
    }
    
    func typeText(_ identfier: String, _ text: String){
        app.textFields[identfier].tap()
        app.textFields[identfier].typeText(text)
    }

    // MARK: Secure Text field
    
    func tapSecureTextField(_ identifier: String){
        app.secureTextFields[identifier].tap()
    }
    
    func typeSecureText(_ identfier: String, _ text: String){
        app.secureTextFields[identfier].tap()
        app.secureTextFields[identfier].typeText(text)
    }
    
    // MARK: Table view
    
    func tapTableViewCell(_ tableViewIdentifier: String, _ cellNumber: Int){
        app.tables.cells.element(boundBy: cellNumber).tap()
    }
    
    func swipeLeftCell(_ tableViewIdentifier: String, _ cellIdentifier: String){
        app.tables.cells[cellIdentifier].swipeLeft()
    }
    
    //MARK: Image
    
    func imageWithIndentifierIsSelected (_ identifier: String) {
        XCTAssertTrue(app.images[identifier].label == "Selected", "Image \(identifier) is not selected.")
    }
    
    func imageWithIndentifierIsNotSelected (_ identifier: String) {
        XCTAssertTrue(app.images[identifier].label == "circle", "Image \(identifier) is not selected.")
    }
}

