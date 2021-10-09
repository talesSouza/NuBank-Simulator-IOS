import UIKit

class TransferCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var roundedItem: RoundedCardItem!
    
    func configure() {
        roundedItem.set(text: "Transferir", image: UIImage(named: "nuBank")!)
    }
}
