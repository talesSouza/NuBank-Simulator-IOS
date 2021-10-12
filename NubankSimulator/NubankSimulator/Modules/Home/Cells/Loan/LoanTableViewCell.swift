import UIKit

class LoanTableViewCell: UITableViewCell {

    // MARK: IBOutlets
    @IBOutlet weak var loanDefaultCard: DefaultCard!
    
}

// MARK: Setup
extension LoanTableViewCell: HomeCellProtocol {
    
    func setup() {
        loanDefaultCard.set(imageName: "loanMoney", topText: "Empréstimo", bottomText: "loan.loanText".localized)
    }
}
