//
//  MyGroupController.swift
//  clientVK
//
//  Created by paul kudryavtsev on 01.04.2020.
//  Copyright © 2020 paul kudzryavtsev. All rights reserved.
//

import UIKit

class MyGroupController: UITableViewController {
    
    var myGroups = [Group]()
    var groupGC: Group!
    
    
    @IBAction func addGroup(seque: UIStoryboardSegue) {
         
        
         if seque.identifier == "addGroup" {
            
            if !myGroups.contains(groupGC) {
            
                myGroups.append(groupGC)
                tableView.reloadData()
                }
           }
    }


       override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
            return myGroups.count
        }
    
       override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          
            let cell = tableView.dequeueReusableCell(withIdentifier: "MyGroupCell", for: indexPath) as! MyGroupCell
            
            let group = myGroups[indexPath.row]
            
            cell.myGroupCellLabel.text = group.name
            cell.myGroupCell.image = group.avatar

            return cell

        }

 
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
            myGroups.remove(at: indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
}

