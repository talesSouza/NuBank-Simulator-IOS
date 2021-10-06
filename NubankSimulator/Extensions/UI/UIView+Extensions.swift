import UIKit

extension UIView {
    
    func getBordered(width: CGFloat = 1, color: UIColor = .purple, radius: CGFloat = 3) {
        self.layer.borderWidth = width
        self.layer.borderColor = color.cgColor
        self.layer.cornerRadius = radius
    }
}
