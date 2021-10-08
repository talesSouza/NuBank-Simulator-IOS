import UIKit

class RoundedCardItem: UIView, NibOwnerLoadable {
    
    // MARK: - IBOutlets
    @IBOutlet weak var roundedView: UIView!
    @IBOutlet weak var centerImage: UIImageView!
    @IBOutlet weak var label: LabelView!
    
    // MARK: - Initializers
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.loadNibContent()
        
        roundedView.layer.cornerRadius = roundedView.frame.size.width / 2
        roundedView.clipsToBounds = true
    }
}

// MARK: - Sets
extension RoundedCardItem {
    func set(text: String, image: UIImage) {
        label.set(text: text, textStyle: TextStyle())
        centerImage.image = image
    }
}
