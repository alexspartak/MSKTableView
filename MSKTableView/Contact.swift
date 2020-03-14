//
//  Contact.swift
//  MSKTableView
//
//  Created by Alex Tishchenko on 3/7/20.
//  Copyright © 2020 Alex Tishchenko. All rights reserved.
//

struct Contact {
    ///
    let name: String
    let surName: String
    let phoneNumber: String
    let photoName: String
    
    func fullName() -> String {
        return name + " " + surName
    }
    
}
