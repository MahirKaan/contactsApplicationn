//
//  ViewController.swift
//  contactsApplication
//
//  Created by Mahir Kaan Küçükgençay on 13.03.2024.
//

import UIKit

class HomePage: UIViewController{

    @IBOutlet weak var contactsTableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    var contactsList = [Contacts]()
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        contactsTableView.delegate = self
        contactsTableView.dataSource = self
        
        let c1 = Contacts(Contact_id: 1, Contact_name: "Kaan", Contact_number: "1111")
        let c2 = Contacts(Contact_id: 2, Contact_name: "Ali", Contact_number: "2222")
        let c3 = Contacts(Contact_id: 3, Contact_name: "Ayse", Contact_number: "3333")
        contactsList.append(c1)
        contactsList.append(c2)
        contactsList.append(c3)
        
    }
    override func viewWillAppear(_ animated: Bool) {
        print("Returned to home page")
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail" {
            if let contact = sender as? Contacts{
                let toGoVC = segue.destination as! ContactDetail
                toGoVC.Contact = contact
                
            }
        }
    }
}
extension HomePage : UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("Search contact : \(searchText)")
    }
}

extension HomePage :UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let contact = contactsList[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactsCell") as! ContactsCell
        
        cell.contactsNameLabel.text = contact.Contact_name
        cell.contactsNumberLabel.text = contact.Contact_number
        
        return cell
        
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let contact = contactsList[indexPath.row]
        performSegue(withIdentifier: "toDetail", sender: contact)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete"){UIContextualAction,view,bool in
            let contact = self.contactsList[indexPath.row]
            let alert = UIAlertController(title: "Deletion", message: "\(contact.Contact_name!) delete?", preferredStyle: .alert)
            
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
            alert.addAction(cancelAction)
            
            
            let yesAction = UIAlertAction(title: "Yes", style: .destructive){ action in
                print("Delete contact : \(contact.Contact_id!)")
            }
            alert.addAction(yesAction)
            self.present(alert,animated: true)
            
        }
        return UISwipeActionsConfiguration(actions: [deleteAction])
        
        
    }
}
