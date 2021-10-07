import UIKit

class UserTableViewCell: UITableViewCell, NibOwnerLoadable {

    @IBOutlet weak var usernameLabelView: LabelView!
    
    static let identifier = "UserTableViewCell"
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        usernameLabelView.set(text: "Olá, Tales", textStyle: TextStyle(color: .white, size: .p18, weight: .semiBold))
    }
    
}
