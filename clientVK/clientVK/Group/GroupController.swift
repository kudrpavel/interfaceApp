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
        Group("Московский район On-line", avatar: UIImage(named: "MR")),
        Group("Лицей 470 класс 5В", avatar: UIImage(named: "лицей")),
        Group("Хоккейный клуб Красная Звезда", avatar: UIImage(named: "XvJLWTCwjnc")),
        Group("Фильмы On line", avatar: UIImage(named: "фильмы")),
        Group("Группа детского сада №2 560", avatar: UIImage(named: "группа дс")),
        Group("IOs Dev", avatar: UIImage(named: "ios")),
        Group("Сериалы НОВИНКИ", avatar: UIImage(named: "сериалы")),
        Group("Загородное строительство", avatar: UIImage(named: "заг_строительство")),
        Group("47 news", avatar: UIImage(named: "47n")),
        Group("Fontanka", avatar: UIImage(named: "fontanka")),
        Group("ФК Зенит", avatar: UIImage(named: "зенит")),
        Group("MarketPlace", avatar: UIImage(named: "market")),
        Group("Питер live", avatar: UIImage(named: "питер")),

    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning
//    }
    
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return groups.count
    }

   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let communitySeque = segue.destination as? MyGroupController {
            if let indexPath = tableView.indexPathForSelectedRow {
                let groupGC = groups[indexPath.row]
                communitySeque.groupGC = groupGC

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


}
