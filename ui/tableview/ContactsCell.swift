//
//  ContactsCell.swift
//  contactsApplication
//
//  Created by Mahir Kaan Küçükgençay on 14.03.2024.
//

import UIKit

class ContactsCell: UITableViewCell {
    
    
    @IBOutlet weak var contactsNameLabel: UILabel!
    @IBOutlet weak var contactsNumberLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
