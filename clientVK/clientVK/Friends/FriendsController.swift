//
//  FriendsController.swift
//  clientVK
//
//  Created by paul kudryavtsev on 01.04.2020.
//  Copyright © 2020 paul kudryavtsev. All rights reserved.
//

import UIKit

class FriendsController: UITableViewController {
    
    var friends = [
        User(name: "Василий Иванов", avatar: UIImage(named: "men")!, place: "Санкт-Петербург", education: .average, maritalStatus: .inSearch, foto: [UIImage(named: "men")!,UIImage(named: "men")!,UIImage(named: "men")!,UIImage(named: "men")!,UIImage(named: "men")!,UIImage(named: "men")!]),
        
        User(name: "Егений Петров", avatar: UIImage(named: "vi")!, place: "Москва", education: .higher, maritalStatus: .married, foto: [UIImage(named: "vi")!,UIImage(named: "vi")!,UIImage(named: "vi")!,UIImage(named: "vi")!,UIImage(named: "vi")!,UIImage(named: "vi")!,UIImage(named: "vi")!,UIImage(named: "vi")!]),

        User(name: "Жанна Агузарова", avatar: UIImage(named: "za")!, place: "Ебург", education: .average, maritalStatus: .single, foto: [UIImage(named: "za")!,UIImage(named: "za")!,UIImage(named: "za")!,UIImage(named: "za")!,UIImage(named: "za")!,UIImage(named: "za")!]),

        User(name: "Тиль Линденманн", avatar: UIImage(named: "tl")!, place: "Берлин", education: .higher, maritalStatus: .inSearch, foto: [UIImage(named: "tl")!,UIImage(named: "tl")!,UIImage(named: "tl")!,UIImage(named: "tl")!,UIImage(named: "tl")!,UIImage(named: "tl")!,UIImage(named: "tl")!,]),

        User(name: "Димон", avatar: UIImage(named: "di")!, place: "Питер", education: .higher, maritalStatus: .married, foto: [UIImage(named: "di")!,UIImage(named: "di")!,UIImage(named: "di")!,UIImage(named: "di")!,UIImage(named: "di")!,]),

        User(name: "Дядя Федор", avatar: UIImage(named: "df")!, place: "Простоквашино", education: .initial, maritalStatus: .notChosen, foto: [UIImage(named: "df")!,UIImage(named: "df")!,UIImage(named: "df")!,UIImage(named: "df")!,UIImage(named: "df")!])
        
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return friends.count
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let friendInfo = segue.destination as? FriendInfoController {
            
            if let indexPath = tableView.indexPathForSelectedRow {
                
                let friend = friends[indexPath.row]
                
                friendInfo.friend = friend

            }
        }
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "OneFriendCell", for: indexPath) as! FriendsCell
        
        let friend = friends[indexPath.row]
        
        cell.friendsName.text = friend.name
        cell.icon.image = friend.avatar


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
