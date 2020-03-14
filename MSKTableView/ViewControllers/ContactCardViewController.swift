//
//  ContactCardViewController.swift
//  MSKTableView
//
//  Created by Alex Tishchenko on 3/11/20.
//  Copyright © 2020 Alex Tishchenko. All rights reserved.
//

import UIKit

class ContactCardViewController: UIViewController {
    
    @IBOutlet var imageViewCard: UIImageView!
    @IBOutlet var fullNameCard: UILabel!
    @IBOutlet var phoneCrd: UILabel!
    
    var contact: Contact?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageViewCard.image = UIImage(named: contact?.photoName ?? "")
        

    }

    
}

