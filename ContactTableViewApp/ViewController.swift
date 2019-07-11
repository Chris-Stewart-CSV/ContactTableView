//
//  ViewController.swift
//  ContactTableViewApp
//
//  Created by Stewart, Christopher Michael on 7/1/19.
//  Copyright © 2019 Christopher. All rights reserved.
//

import UIKit

class ContactTableViewController: UITableViewController {
    
    var contacts: ContactDBModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
        contacts = ContactDBModel()
    }//end viewDidLoad
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }//end numberOfSections
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Contacts"
    }//end titleForHeader
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count()
    }//end numberOfRows
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let contactId = "ContactCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: contactId, for: indexPath)
        let contact = contacts.contactAtIndex(indexPath.row)
        cell.textLabel!.text = contact.fullName()
        return cell
    }//end cellForRowAt
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        let contact = contacts.contactAtIndex(indexPath.row)
        let alert = UIAlertController(title:"\(contact.fullName())", message: contact.contactInfo(), preferredStyle: .alert)
        alert.addAction(UIAlertAction(title:"Close", style: .default, handler: {_ in}))
        self.present(alert, animated: true, completion: {})
    }//end didSelectRowAt
    
}//endclass
