//
//  ListTableViewController.swift
//  favorites
//
//  Created by Brittney Hoy on 5/29/16.
//  Copyright © 2016 Brittney Hoy. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewCell {
    
    @IBOutlet var name: UILabel!
    var nameList = [String]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }


}
