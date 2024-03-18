//
//  Contacts.swift
//  contactsApplication
//
//  Created by Mahir Kaan Küçükgençay on 13.03.2024.
//

import Foundation

class Contacts{
    var Contact_id:Int?
    var Contact_name:String?
    var Contact_number:String?
    
    init(){
        
    }
    
    init(Contact_id: Int, Contact_name: String, Contact_number: String ) {
        self.Contact_id = Contact_id
        self.Contact_name = Contact_name
        self.Contact_number = Contact_number
    }
    
}


