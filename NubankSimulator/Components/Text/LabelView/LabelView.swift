import UIKit

class LabelView: UIView, NibOwnerLoadable {
    
    // MARK: - Outlets
    @IBOutlet weak var label: UILabel!
    
    // MARK: - Stored Properties
    private let textBuilder = TextBuilder()
    
    // MARK: - Initializers
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.loadNibContent()
        backgroundColor = .clear
    }
}

// MARK: - Sets
extension LabelView {
    
    func set(text: String, textStyle: TextStyle = TextStyle()) {
        label.attributedText = textBuilder.buildText(text: text, style: textStyle)
        label.backgroundColor = .clear
    }
}
