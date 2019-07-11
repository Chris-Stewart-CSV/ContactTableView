//
//  Contact.swift
//  ContactTableViewApp
//
//  Created by Stewart, Christopher Michael on 7/1/19.
//  Copyright © 2019 Christopher. All rights reserved.
//

import Foundation

class Contact {
    
    var first:String
    var last:String
    var address:String
    var phone:String
    var email:String
    
    init(first:String, last:String, address:String, phone:String, email:String){
        self.first = first
        self.last = last
        self.address = address
        self.phone = phone
        self.email = email
    }//end init
    
    func fullName() -> String{
        return first + " " + last
    }//end fullName
    
    func contactInfo() -> String{
        return fullName() + "\n" + address + "\n" + phone + "\n" + email
    }//end contactInfo
    
}//end Contact class
