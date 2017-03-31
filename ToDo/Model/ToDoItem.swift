//
//  ToDoItem.swift
//  ToDo
//
//  Created by Bryan on 30/03/17.
//  Copyright © 2017 bolivarbryan. All rights reserved.
//

import Foundation

struct ToDoItem {
    var title: String
    var itemDescription: String?
    var timestamp: Double?
    var location: Location?
    
    init(title: String, itemDescription: String? = nil, timestamp: Double? = nil, location: Location? = nil) {
        self.title = title
        self.itemDescription = itemDescription
        self.timestamp = timestamp
        self.location = location
    }
}
