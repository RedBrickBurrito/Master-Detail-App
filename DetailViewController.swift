//
//  DetailViewController.swift
//  Master-Detail
//
//  Created by user187992 on 3/5/21.
//

import UIKit

class DetailViewController: UIViewController {
    //MARK: Properties
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var seriesNumLabel: UILabel!
    
    func configureView() {
        if let myBook = detailItem {
            titleLabel.text = myBook.title
            authorLabel.text = myBook.author
            descriptionLabel.text = myBook.description
            seriesNumLabel.text = String(myBook.seriesNum)
        }
        
    }
    
     override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }
    
    var detailItem: Book? {
        didSet {
            
        }
    }
    
    @IBAction func cancel(sender: AnyObject) {
        dismiss(animated: false, completion: nil)
    }
}
