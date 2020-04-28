//
//  FriendInfoController.swift
//  clientVK
//
//  Created by paul kudryavtsev on 16.04.2020.
//  Copyright © 2020 paul kudryavtsev. All rights reserved.
//

import UIKit

class FriendInfoController: UIViewController {
    
    var friend: User!
    var photo: UIImage?
    
  
    
    @IBOutlet weak var collectionView: UICollectionView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let selectedCellIndexRow = collectionView.indexPathsForSelectedItems!.first!.item
        (segue.destination as! FriendOnePhotoController).data = friend.foto[selectedCellIndexRow]
    }
    
}
    

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





