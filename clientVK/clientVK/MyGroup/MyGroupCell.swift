//
//  MyGroupCell.swift
//  clientVK
//
//  Created by paul kudryavtsev on 01.04.2020.
//  Copyright © 2020 paul kudryavtsev. All rights reserved.
//

import UIKit

class MyGroupCell: UITableViewCell {

    @IBOutlet weak var myGroupCellLabel: UILabel!
    @IBOutlet weak var myGroupCell: UIImageView!

    
  
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
