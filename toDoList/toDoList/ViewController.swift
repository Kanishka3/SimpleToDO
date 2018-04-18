//
//  ViewController.swift
//  toDoList
//
//  Created by Kanishka TheProgrammer on 18/04/18.
//  Copyright © 2018 Kanishka TheProgrammer. All rights reserved.
//

import UIKit
 public var allElements = ["Clean my room", "Iron my clothes", "Learn on Udemy and Sebestian"]
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
  
   public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return(allElements.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = allElements[indexPath.row]
        
        return(cell)
    }
    //the following function is responsible for deleting or inserting the cell
    public  func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath){
        if editingStyle == UITableViewCellEditingStyle.delete  {
          allElements.remove(at: indexPath.row) //deleting the partiular cell clicked
            tableVie.reloadData()
         }
        
        
    }
    @IBOutlet var tableVie: UITableView!
    
    
    override func viewDidAppear(_ animated: Bool) {
        tableVie.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}
    
 








