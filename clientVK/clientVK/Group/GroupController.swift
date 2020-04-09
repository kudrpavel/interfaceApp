//
//  GroupController.swift
//  clientVK
//
//  Created by paul kudryavtsev on 01.04.2020.
//  Copyright © 2020 paul kudryavtsev. All rights reserved.
//

import UIKit

class GroupController: UITableViewController {
    
    var groups = [
        Group(name: "Московский район On-line", avatar: UIImage(named: "MR")!),
        Group(name: "Лицей 470 класс 5В", avatar: UIImage(named: "лицей")!),
        Group(name: "Хоккейный клуб Красная Звезда", avatar: UIImage(named: "XvJLWTCwjnc")!),
        Group(name: "Фильмы On line", avatar: UIImage(named: "фильмы")!),
        Group(name: "Группа детского сада №2 560", avatar: UIImage(named: "группа дс")!),
        Group(name: "IOs Dev", avatar: UIImage(named: "ios")!),
        Group(name: "Сериалы НОВИНКИ", avatar: UIImage(named: "сериалы")!),
        Group(name: "Загородное строительство", avatar: UIImage(named: "заг_строительство")!),
        Group(name: "47 news", avatar: UIImage(named: "47n")!),
        Group(name: "Fontanka", avatar: UIImage(named: "fontanka")!),
        Group(name: "MarketPlace", avatar: UIImage(named: "market")!),
        Group(name: "ФК Зенит", avatar: UIImage(named: "зенит")!),
        Group(name: "Питер live", avatar: UIImage(named: "питер")!)
        
    ]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return groups.count
    }

   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if let selectGroup = segue.destination as? MyGroupController {

            if let indexPath = tableView.indexPathForSelectedRow {

                let group = groups[indexPath.row]

                selectGroup.group = group

            }
        }
    }

    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
        let cell = tableView.dequeueReusableCell(withIdentifier: "OneGroupCell", for: indexPath) as! GroupCell
        
        let group = groups[indexPath.row]
        
        cell.selectGroup.text = group.name
        cell.iconGroupAll.image = group.avatar

        return cell
        
    }
    

    
    
    
  

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
