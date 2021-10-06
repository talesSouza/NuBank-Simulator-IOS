import UIKit

class TextBuilder {
    
    func buildText(text: String, style: TextStyle) -> NSAttributedString {
        
        return NSMutableAttributedString(string: text,
                                         attributes: [NSAttributedString.Key.font: getSFProDisplay(withSize: style.size.rawValue, weight: style.weight),
                                                      NSAttributedString.Key.foregroundColor: style.color])
    }
}

// MARK: - Private Methods
extension TextBuilder {
    private func getSFProDisplay(withSize size: CGFloat,
                                 weight: TextBuilderFontWeight) -> UIFont {
        let baseName = "GillSans-"
        return UIFont(name: baseName + weight.rawValue, size: size) ?? UIFont.systemFont(ofSize: size)
    }
}
