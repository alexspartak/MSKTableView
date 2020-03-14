//
//  ViewController.swift
//  MSKTableView
//
//  Created by Alex Tishchenko on 3/7/20.
//  Copyright © 2020 Alex Tishchenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    var contact: Contact?
    var indexImage = 0
    
    let contactsArray = [Contact(name: "Alex", surName: "Til", phoneNumber: "8329423", photoName: "1"),
                    Contact(name: "Nik", surName: "Bel", phoneNumber: "89429348", photoName: "2"),
                    Contact(name: "Lon", surName: "Bird", phoneNumber: "1231234", photoName: "3"),
                    Contact(name: "Geogre", surName: "Poey", phoneNumber: "423534123", photoName: "4"),
                    Contact(name: "Koler", surName: "Borug", phoneNumber: "4312345", photoName: "5"),
                    Contact(name: "Urus", surName: "White", phoneNumber: "32123412", photoName: "6"),
                    Contact(name: "Kil", surName: "Huet", phoneNumber: "74324923", photoName: "7"),
                    Contact(name: "Kurt", surName: "Rus", phoneNumber: "45123943", photoName: "8"),
                    Contact(name: "Jac", surName: "Ver", phoneNumber: "34232234", photoName: "9"),
                    Contact(name: "Bob", surName: "Yerop", phoneNumber: "23423423", photoName: "10"),
                    Contact(name: "John", surName: "Snoy", phoneNumber: "32423492", photoName: "11")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 100
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "DetailVCIdentifier"{
            let detailVC = segue.destination as? ContactCardViewController
            detailVC?.contact = contact

        }
    }
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "DetailVCIdentifier", sender: nil)
        
        let contact = contactsArray[indexPath.row]
        self.contact = contact
    
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellForContact", for: indexPath) as? TableViewCell
        
        let contact = contactsArray[indexPath.row]
        cell?.contactImageView?.image = UIImage(named: contact.photoName)
        cell?.fullNameLabel.text = contact.fullName()
        cell?.phoneNumber.text = contact.phoneNumber
        indexImage = indexPath.row
      
        return cell ?? UITableViewCell()
    }
    
}


