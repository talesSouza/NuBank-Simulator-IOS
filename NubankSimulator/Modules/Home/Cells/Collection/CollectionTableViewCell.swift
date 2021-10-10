import UIKit

class CollectionTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionItems: UICollectionView!
    
    var menuOptions: [MenuOption] = [MenuOption(imageName: "pix", text: "Pix"),
                                     MenuOption(imageName: "barCode", text: "Pagamento"),
                                     MenuOption(imageName: "transfer", text: "Transferir"),
                                     MenuOption(imageName: "deposit", text: "Depositar"),
                                     MenuOption(imageName: "recharge", text: "Recarga de celular"),
                                     MenuOption(imageName: "demand", text: "Cobrar"),
                                     MenuOption(imageName: "donation", text: "Doação"),
                                     MenuOption(imageName: "worldTransfer", text: "Transferir Internac.")]
    
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

