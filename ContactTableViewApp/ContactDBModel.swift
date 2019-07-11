//
//  ContactDBModel.swift
//  ContactTableViewApp
//
//  Created by Stewart, Christopher Michael on 7/1/19.
//  Copyright © 2019 Christopher. All rights reserved.
//

import Foundation

class ContactDBModel{
    
    var contacts: [Contact]
    
    init() {
        contacts = Array<Contact>()
        loadDatabase()
    }//end init
    
    func loadDatabase(){
        contacts.append(Contact(first: "Bob", last: "Smith", address: "2700 Bay Area Blvd Houston, TX 77058", phone: "111-222-333", email: "bob@uhcl.edu"))
        contacts.append(Contact(first: "Jimmy", last: "McGill", address: "2701 Bay Area Blvd Houston, TX 77058", phone: "123-123-123", email: "jim@uhcl.edu"))
        contacts.append(Contact(first: "Mike", last: "Unknown", address: "2702 Bay Area Blvd Houston, TX 77058", phone: "321-231-321", email: "mike@uhcl.edu"))
        //add more here later
    }//end loadDatabase
    
    func contactAtIndex(_ idx: Int)->Contact{
        return contacts[idx]
    }//end contactAtIndex
    
    func deleteContactAtIndex(_ idx: Int){
        contacts.remove(at: idx)
    }//end deleteContactAtIndex
    
    func count()->Int{
        return contacts.count
    }//end count
    
    func addContact(_ c: Contact){
        contacts.append(c)
    }//end addContact
    
}//end class
