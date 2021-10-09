import UIKit

class payCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var roundedItem: RoundedCardItem!
    
    func configure() {
        roundedItem.set(text: "Pagar", image: UIImage(named: "nuBank")!)
    }
    
}
