import UIKit

class AccountTableViewCell: UITableViewCell, NibOwnerLoadable {

    @IBOutlet weak var accountLabelView: LabelView!
    @IBOutlet weak var balanceLabelView: LabelView!
    
    static let identifier = "AccountTableViewCell"
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        
        accountLabelView.set(text: "home.account".localized, textStyle: TextStyle(color: .black, size: .p22, weight: .semiBold))
        
        balanceLabelView.set(text: "R$ 244.844,39", textStyle: TextStyle(color: .black, size: .p26, weight: .semiBold))
        
    }
}
