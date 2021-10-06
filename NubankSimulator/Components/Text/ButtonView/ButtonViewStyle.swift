import UIKit

enum ButtonViewStyle {
    case primary
    case secondary
    
    var textStyle: TextStyle {
        
        switch self {
        case .primary:
            return TextStyle(color: .white, size: .p16, weight: .semiBold)
        case .secondary:
            return TextStyle(color: .purple, size: .p16, weight: .semiBold)
        }
    }
}
