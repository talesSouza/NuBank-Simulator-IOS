import UIKit

class MenuOptionsCollectionViewCell: UICollectionViewCell {
    
    // MARK: - IBOutlets
    @IBOutlet weak var roundedBackgroundView: UIView!
    @IBOutlet weak var centerImage: UIImageView!
    @IBOutlet weak var titleLabelView: LabelView!
}

// MARK: - Setup
extension MenuOptionsCollectionViewCell {
    
    func setup(menuOption: MenuOption) {
        roundedBackgroundView.layer.cornerRadius = roundedBackgroundView.frame.size.width / 2
        roundedBackgroundView.clipsToBounds = true
        
        centerImage.image = UIImage(named: menuOption.imageName)
        titleLabelView.set(text: menuOption.text, textStyle: TextStyle())
    }
}
