//
//  TableViewCell.swift
//  MSKTableView
//
//  Created by Alex Tishchenko on 3/7/20.
//  Copyright © 2020 Alex Tishchenko. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet var fullNameLabel: UILabel!
    @IBOutlet var phoneNumber: UILabel!
    @IBOutlet var contactImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        contactImageView.layer.cornerRadius = contactImageView.frame.size.width / 2
        contactImageView.clipsToBounds = true
        contactImageView.contentMode = .scaleAspectFit
    }
    
}
