import UIKit

enum TextBuilderFontSize: CGFloat {
    
    case p14 = 14
    case p16 = 16
    case p18 = 18
    case p20 = 20
    case p22 = 22
    case p24 = 24
    case p26 = 26
    case p28 = 28
    case p30 = 30
    case p34 = 34
}

enum TextBuilderFontWeight: String {
   
    case regular = "Regular"
    case semiBold = "SemiBold"
    case bold = "Bold"
}

struct TextStyle {
    
    var color: UIColor = .black
    var size: TextBuilderFontSize = .p16
    var weight: TextBuilderFontWeight = .semiBold
    var aligment: NSTextAlignment = .center
}
