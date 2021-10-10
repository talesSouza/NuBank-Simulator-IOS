import UIKit

class AccountBalanceTableViewCell: UITableViewCell {

    @IBOutlet weak var accountLabelView: LabelView!
    
    @IBOutlet weak var balanceLabelView: LabelView!
    
    
    func config() {
        accountLabelView.set(text: "Conta", textStyle: TextStyle(size: .p22))
        balanceLabelView.set(text: "R$ 42.169,24", textStyle: TextStyle(size: .p30))
    }
}
