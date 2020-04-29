//
//  FriendInfoCell.swift
//  clientVK
//
//  Created by paul kudryavtsev on 01.04.2020.
//  Copyright © 2020 paul kudryavtsev. All rights reserved.
//

import UIKit

class FriendInfoCell: UICollectionViewCell {
    
    @IBOutlet weak var likeImage: UIImageView!
    @IBOutlet weak var photoFriend: UIImageView!
    @IBOutlet weak var likeCount: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        likeCount.text = "0"
        likeCount.textColor = .gray
        likeImage.image = UIImage(systemName: "heart")
        likeImage.tintColor = .gray
        
    }

    
    @IBAction func likeButtonPressed(_ sender: Any) {
        if likeCount.text == "0" {
            likeCount.text = "1"
            likeCount.textColor = .red
            likeImage.image = UIImage(systemName: "heart.fill")
            likeImage.tintColor = .red
        } else {
            likeCount.text = "0"
            likeCount.textColor = .gray
            likeImage.image = UIImage(systemName: "heart")
            likeImage.tintColor = .gray
        }
        
    }
    
}


