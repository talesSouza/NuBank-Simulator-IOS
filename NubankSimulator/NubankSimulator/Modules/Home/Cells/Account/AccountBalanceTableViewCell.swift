import UIKit

class AccountBalanceTableViewCell: UITableViewCell {

    // MARK: - IBOutlets
    @IBOutlet weak var accountLabelView: LabelView!
    @IBOutlet weak var balanceLabelView: LabelView!
    
    // MARK: - Stored Properties
    let user: User = User()
}

// MARK: - Setup
extension AccountBalanceTableViewCell: HomeCellProtocol {
    
    func setup() {
        accountLabelView.set(text: "balance.account".localized, textStyle: TextStyle(size: .p24))
        balanceLabelView.set(text: "R$ \(user.balance)", textStyle: TextStyle(size: .p30))
    }
}
