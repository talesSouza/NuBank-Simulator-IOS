import UIKit

enum TextBuilderFontSize: CGFloat {
    
    case p14 = 14
    case p16 = 16
    case p18 = 18
    case p20 = 20
}

enum TextBuilderFontWeight: String {
   
    case semiBold = "SemiBold"
    case bold = "Bold"
}

struct TextStyle {
    
    var color: UIColor = .black
    var size: TextBuilderFontSize = .p14
    var weight: TextBuilderFontWeight = .semiBold
}
