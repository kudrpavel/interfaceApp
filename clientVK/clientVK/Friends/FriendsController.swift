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
        User(firstName: "Василий", secondName: "Иванов",  avatar: UIImage(named: "gena5")!, place: "Санкт-Петербург", education: .average, maritalStatus: .inSearch, foto: [UIImage(named: "gena1")!,UIImage(named: "gena2")!,UIImage(named: "gena3")!,UIImage(named: "gena4")!,UIImage(named: "gena5")!]),
        User(firstName: "Маринэ", secondName: "Авакян", avatar: UIImage(named: "gena5")!, place: "Санкт-Петербург", education: .average, maritalStatus: .inSearch, foto: [UIImage(named: "gena1")!,UIImage(named: "gena2")!,UIImage(named: "gena3")!,UIImage(named: "gena4")!,UIImage(named: "gena5")!]),
        User(firstName: "Татьяна", secondName: "Арбенина", avatar: UIImage(named: "gena5")!, place: "Санкт-Петербург", education: .average, maritalStatus: .inSearch, foto: [UIImage(named: "gena1")!,UIImage(named: "gena2")!,UIImage(named: "gena3")!,UIImage(named: "gena4")!,UIImage(named: "gena5")!]),
        User(firstName: "Юлия", secondName: "Иванова", avatar: UIImage(named: "gena5")!, place: "Санкт-Петербург", education: .average, maritalStatus: .inSearch, foto: [UIImage(named: "gena1")!,UIImage(named: "gena2")!,UIImage(named: "gena3")!,UIImage(named: "gena4")!,UIImage(named: "gena5")!]),
        User(firstName: "Василий", secondName: "Иванов", avatar: UIImage(named: "gena5")!, place: "Санкт-Петербург", education: .average, maritalStatus: .inSearch, foto: [UIImage(named: "gena1")!,UIImage(named: "gena2")!,UIImage(named: "gena3")!,UIImage(named: "gena4")!,UIImage(named: "gena5")!]),
        User(firstName: "Вадим", secondName: "Антонов", avatar: UIImage(named: "gena5")!, place: "Санкт-Петербург", education: .average, maritalStatus: .inSearch, foto: [UIImage(named: "gena1")!,UIImage(named: "gena2")!,UIImage(named: "gena3")!,UIImage(named: "gena4")!,UIImage(named: "gena5")!]),
        User(firstName: "Дмитрий", secondName: "Борисов", avatar: UIImage(named: "gena5")!, place: "Санкт-Петербург", education: .average, maritalStatus: .inSearch, foto: [UIImage(named: "gena1")!,UIImage(named: "gena2")!,UIImage(named: "gena3")!,UIImage(named: "gena4")!,UIImage(named: "gena5")!]),
        User(firstName: "Иннокентий", secondName: "Георгиев", avatar: UIImage(named: "gena5")!, place: "Санкт-Петербург", education: .average, maritalStatus: .inSearch, foto: [UIImage(named: "gena1")!,UIImage(named: "gena2")!,UIImage(named: "gena3")!,UIImage(named: "gena4")!,UIImage(named: "gena5")!]),
        User(firstName: "Кирилл", secondName: "Иванов", avatar: UIImage(named: "gena5")!, place: "Санкт-Петербург", education: .average, maritalStatus: .inSearch, foto: [UIImage(named: "gena1")!,UIImage(named: "gena2")!,UIImage(named: "gena3")!,UIImage(named: "gena4")!,UIImage(named: "gena5")!]),
        User(firstName: "Петр", secondName: "Головнев", avatar: UIImage(named: "gena5")!, place: "Санкт-Петербург", education: .average, maritalStatus: .inSearch, foto: [UIImage(named: "gena1")!,UIImage(named: "gena2")!,UIImage(named: "gena3")!,UIImage(named: "gena4")!,UIImage(named: "gena5")!]),
        User(firstName: "Геннадий", secondName: "Костянец", avatar: UIImage(named: "gena5")!, place: "Санкт-Петербург", education: .average, maritalStatus: .inSearch, foto: [UIImage(named: "gena1")!,UIImage(named: "gena2")!,UIImage(named: "gena3")!,UIImage(named: "gena4")!,UIImage(named: "gena5")!]),
        User(firstName: "Юрий", secondName: "Дудь", avatar: UIImage(named: "vi")!, place: "Москва", education: .higher, maritalStatus: .married, foto: [UIImage(named: "du3")!,UIImage(named: "du4")!,UIImage(named: "du7")!]),
        User(firstName: "Жанна", secondName: "Агузарова", avatar: UIImage(named: "za")!, place: "Ебург", education: .average, maritalStatus: .single, foto: [UIImage(named: "z2")!,UIImage(named: "z3")!,UIImage(named: "z5")!]),
        User(firstName: "Тиль", secondName: "Линденманн", avatar: UIImage(named: "tl")!, place: "Берлин", education: .higher, maritalStatus: .inSearch, foto: [UIImage(named: "til2")!,UIImage(named: "til3")!,UIImage(named: "til4")!,UIImage(named: "til5")!]),
        User(firstName: "Николай", secondName: "Андреев", avatar: UIImage(named: "di")!, place: "Питер", education: .higher, maritalStatus: .married, foto: [UIImage(named: "di")!,UIImage(named: "di")!,UIImage(named: "di")!,UIImage(named: "di")!,UIImage(named: "di")!,]),
        User(firstName: "Федор", secondName: "дядя", avatar: UIImage(named: "df")!, place: "Простоквашино", education: .initial, maritalStatus: .notChosen, foto: [UIImage(named: "df3")!,UIImage(named: "df4")!,UIImage(named: "df6")!])
        
    ]

    @IBOutlet weak var FriendsCell: FriendsCell!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
  
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let friendInfo = segue.destination as? FriendInfoController {
            
            if let indexPath = tableView.indexPathForSelectedRow {
                
                let friend = friends[indexPath.row]
                
                friendInfo.friend = friend
               
            }
        }
    }
    

    
    

    
//extension FriendsController: UITableViewDataSource {

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return friends.count
    }
    


   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "OneFriendCell", for: indexPath) as! FriendsCell
        
        let friend = friends[indexPath.row]
        
        cell.friendsName.text = "\(friend.secondName) " + "\(friend.firstName)"
        cell.icon.image = friend.avatar


        return cell
    }
    

    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
            friends.remove(at: indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }

}

    
        
//    extension FriendsController: UITableViewDelegate {

//        func tableView ( _ tableView : UITableView , didDeselectItemAt
//        indexPath : IndexPath ) { }
//    }
        
        
    


/*

 extension FriendInfoController: UICollectionViewDataSource {
        func numberOfSections ( in collectionView : UICollectionView ) -> Int {
            return 1
        }
        
        func collectionView ( _ collectionView : UICollectionView , numberOfItemsInSection section : Int ) -> Int {
            return friend.foto.count
            
        }
        
        
        func collectionView ( _ collectionView : UICollectionView , cellForItemAt indexPath : IndexPath ) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FriendInfoCell", for: indexPath) as! FriendInfoCell
            
           let photo = friend.foto[indexPath.row]
            
            cell.photoFriend.image = photo
            
            return cell }
        

        
        }

    extension FriendInfoController : UICollectionViewDelegate {
        func collectionView ( _ collectionView : UICollectionView , didDeselectItemAt
        indexPath : IndexPath ) { }
        }


final class LikeButton: UIControl {

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
}

 */
