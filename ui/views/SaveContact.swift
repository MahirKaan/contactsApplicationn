//
//  SaveContact.swift
//  contactsApplication
//
//  Created by Mahir Kaan Küçükgençay on 13.03.2024.
//

import UIKit

class SaveContact: UIViewController {
    @IBOutlet weak var tfContactName: UITextField!
    
    @IBOutlet weak var tfContactNumber: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func saveButton(_ sender: Any) {
        if let cn = tfContactName.text , let cnm = tfContactNumber.text{
            save(contact_name: cn, contact_number: cnm)
        }
    }
    
    func save(contact_name:String,contact_number:String){
        print("Save Contact:  \(contact_name) - \(contact_number)")
    }
   

}
