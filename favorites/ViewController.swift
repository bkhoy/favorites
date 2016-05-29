//
//  ViewController.swift
//  favorites
//
//  Created by Brittney Hoy on 5/29/16.
//  Copyright © 2016 Brittney Hoy. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var submit: UIButton!
    @IBOutlet weak var content: UITextField!
    @IBOutlet var tableView: UITableView!
    var names = [String]()
    var recipe: Recipe?
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if submit === sender {
            let name = content.text ?? ""
            recipe = Recipe(name: name)
        }
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! ListTableViewController

        cell.name.text = names[indexPath.row]
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

