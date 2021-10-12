import UIKit

class DefaultCard: UIView, NibOwnerLoadable {
    
    // MARK: - IBOutlets
    @IBOutlet weak var topImage: UIImageView!
    @IBOutlet weak var topMainLabelView: LabelView!
    @IBOutlet weak var topSecondaryLabelView: LabelView!
    @IBOutlet weak var bottomSecondaryLabelView: LabelView!
    @IBOutlet weak var bottomMainLabelView: LabelView!
    
    // MARK: - Initializers
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.loadNibContent()
        backgroundColor = .clear
    }
}

// MARK: - Sets
extension DefaultCard {
    
    func set(imageName: String, topText: String, bottomText: String) {
        topImage.image = UIImage(named: imageName)
        topMainLabelView.set(text: topText, textStyle: TextStyle(size: .p24))
        bottomMainLabelView.set(text: bottomText, textStyle: TextStyle(color: .gray, size: .p18 ,aligment: .left))
    }
    
    func showSecondaryLabelViews(topText: String, bottomText: String) {
        topSecondaryLabelView.isHidden = false
        bottomSecondaryLabelView.isHidden = false
        
        topSecondaryLabelView.set(text: topText, textStyle: TextStyle(color: .gray, size: .p20))
        bottomSecondaryLabelView.set(text: bottomText, textStyle: TextStyle(size: .p28, aligment: .left))
    }
}
