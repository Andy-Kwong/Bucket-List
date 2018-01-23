//
//  AddItemTableViewControllerDelegate.swift
//  Bucket List
//
//  Created by Andy Kwong on 1/13/18.
//  Copyright © 2018 Andy Kwong. All rights reserved.
//

import Foundation

protocol AddItemTableViewControllerDelegate: class {
    func itemSaved(by controller: AddItemTableViewController, with text: String, at indexPath: NSIndexPath?)
    func cancelButtonPressed(by controller: AddItemTableViewController)
}
