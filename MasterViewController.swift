//
//  MasterViewController.swift
//  Master-Detail
//
//  Created by user187992 on 3/9/21.
//
import UIKit

class MasterViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    // MARK: Properties
    var detailViewController : DetailViewController? = nil
    var myBookStore = Bookstore()
        
    @IBOutlet weak var tableView: UITableView!
    // MARK: Table View
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myBookStore.bookList.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel!.text = myBookStore.bookList[indexPath.row].title
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    // MARK: Segues
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
            let selectedBook : Book = myBookStore.bookList[indexPath.row]
            let controller = (segue.destination as! DetailViewController)
                controller.detailItem = selectedBook }
            
        }
        
    }
    
}
