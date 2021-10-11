import UIKit

class CollectionTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionItems: UICollectionView!
    
    var menuOptions: [MenuOption] = [MenuOption(imageName: "pix", text: "collection.pix".localized),
                                     MenuOption(imageName: "barCode", text: "collection.payment".localized),
                                     MenuOption(imageName: "transfer", text: "collection.transfer".localized),
                                     MenuOption(imageName: "deposit", text: "collection.deposit".localized),
                                     MenuOption(imageName: "recharge", text: "collection.recharge".localized),
                                     MenuOption(imageName: "demand", text: "collection.demand".localized),
                                     MenuOption(imageName: "donation", text: "collection.donation".localized),
                                     MenuOption(imageName: "worldTransfer", text: "collection.worldTransfer".localized)]
    
    func reloadCollectionView() -> Void {
        self.collectionItems.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return menuOptions.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionItems.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! MenuOptionsCollectionViewCell
        cell.configure(menuOption: menuOptions[indexPath.row])
        return cell
    }
}

