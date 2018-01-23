//
//  AddItemTableViewController.swift
//  Bucket List
//
//  Created by Andy Kwong on 1/13/18.
//  Copyright © 2018 Andy Kwong. All rights reserved.
//

import UIKit

class AddItemTableViewController: UITableViewController {
    weak var delegate: AddItemTableViewControllerDelegate?
    var item: String?
    var indexPath: NSIndexPath?
    
    @IBOutlet weak var itemTextField: UITextField!
    
    @IBAction func saveButtonPressed(_ sender: UIBarButtonItem) {
        let text = itemTextField.text!
        delegate?.itemSaved(by: self, with: text, at: indexPath)
    }
    
    @IBAction func cancelButtonPressed(_ sender: UIBarButtonItem) {
        
        delegate?.cancelButtonPressed(by: self)
        print("Cancelled")
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        itemTextField.text = item

   }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
}
