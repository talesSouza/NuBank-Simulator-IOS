import UIKit

class CollectionTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionItems: UICollectionView!
    
    func reloadCollectionView() -> Void {
        self.collectionItems.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.row < 1 {
            let cell = collectionItems.dequeueReusableCell(withReuseIdentifier: "pixCollectionItem", for: indexPath) as! pixCollectionViewCell
            cell.configure()
            return cell
        } else if indexPath.row < 2 {
            
            let cell = collectionItems.dequeueReusableCell(withReuseIdentifier: "payCollectionItem", for: indexPath) as! payCollectionViewCell
            cell.configure()
            return cell
        }
        
        let cell = collectionItems.dequeueReusableCell(withReuseIdentifier: "transferCollectionItem", for: indexPath) as! TransferCollectionViewCell
        cell.configure()
        return cell
    }
}

