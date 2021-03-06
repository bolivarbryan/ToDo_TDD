//
//  ToDoItemTests.swift
//  ToDo
//
//  Created by Bryan on 30/03/17.
//  Copyright © 2017 bolivarbryan. All rights reserved.
//

import XCTest
@testable import ToDo

class ToDoItemTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testInit_ShouldSetTitle() {
        let item = ToDoItem(title: "Test Title")
        XCTAssertEqual(item.title, "Test Title")
    }
    
    func testInit_ShouldSetTitleAndDescription() {
        let item = ToDoItem(title: "Test Title", itemDescription: "Test Description")
        XCTAssertEqual(item.itemDescription, "Test Description", "initializer should set the item description")
    }
    
    func testInit_ShouldSetTitleAndDescriptionAndTimestamp() {
        let item = ToDoItem(title: "Test title", itemDescription: "Test description", timestamp: 0.0)
        XCTAssertEqual(0.0, item.timestamp, "Initializer should set the timestamp")
    }
    
    func testInit_ShouldSetTitleAndDescriptionAndTimestampAndLocation() {
        let location = Location(name: "Test name")
        let item = ToDoItem(title: "Test title", itemDescription: "Test description", timestamp: 0.0, location: location)
        
        XCTAssertEqual(location.name, item.location?.name, "Initializer should set the location")
    }
}
