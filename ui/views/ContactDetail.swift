//
//  ContactDetail.swift
//  contactsApplication
//
//  Created by Mahir Kaan Küçükgençay on 13.03.2024.
//

import UIKit

class ContactDetail: UIViewController {

    @IBOutlet weak var tfContactNumber: UITextField!
    @IBOutlet weak var tfContactName: UITextField!
    
    var Contact:Contacts?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let c = Contact {
            tfContactName.text = c.Contact_name
            tfContactNumber.text = c.Contact_number
        }

        
    }
    
    @IBAction func updateButton(_ sender: Any) {
        if let cn = tfContactName.text , let cnm = tfContactNumber.text,let c = Contact{
            update(contac_id: c.Contact_id!,contact_name: cn, contact_number: cnm)
            
        }
    }
    
    func update(contac_id:Int,contact_name:String,contact_number:String){
        print("Update Contact:  \(contac_id) - \(contact_name)-\(contact_number)")
    }
    
    

}
