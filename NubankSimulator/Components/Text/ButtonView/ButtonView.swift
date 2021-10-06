import UIKit

class ButtonView: UIView, NibOwnerLoadable {
    
    // MARK: - IBOutlets
    @IBOutlet weak var button: UIButton!
    
    // MARK: - Stored Properties
    private let textBuilder: TextBuilder = TextBuilder()
    
    // MARK: - Actions
    private var onTapAction: SimpleClosure = {}
    
    // MARK: - Initializers
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.loadNibContent()
    }
}

// MARK: - Sets
extension ButtonView {
    
    func set(title: String, style: ButtonViewStyle) {
        button.setAttributedTitle(textBuilder.buildText(text: title, style: style.textStyle), for: .normal)
        backgroundColor = .clear
    }
    
    func set(onTapAction: @escaping SimpleClosure) {
        self.onTapAction = onTapAction
    }
    
    func isEnable(_ enable: Bool) {
        alpha = enable ? 1 : 0.5
        button.isEnabled = enable
    }
}

// MARK: - IBActions
extension ButtonView {
    
    @IBAction func buttonAction(_ sender: UIButton) {
        onTapAction()
    }
}
