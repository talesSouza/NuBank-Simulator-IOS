import UIKit

class UserInfoTableViewCell: UITableViewCell {

    // MARK: - IBOutlets
    @IBOutlet weak var label: LabelView!
    @IBOutlet weak var roundedView: UIView!
    
    // MARK: - Stored Properties
    let user: User = User()
}

// MARK: - Setup
extension UserInfoTableViewCell: HomeCellProtocol {
    
    func setup() {
        roundedView.layer.cornerRadius = roundedView.frame.size.width / 2
        roundedView.clipsToBounds = true
        label.set(text: "Olá, \(user.name)", textStyle: TextStyle(color: .white, size: .p20))
    }
}
