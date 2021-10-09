import UIKit

class pixCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var roundedItem: RoundedCardItem!
    
    func configure() {
        roundedItem.set(text: "Área Pix", image: UIImage(named: "pix")!)
    }
    
}
