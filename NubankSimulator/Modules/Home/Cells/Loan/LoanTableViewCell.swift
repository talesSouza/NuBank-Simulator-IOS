import UIKit

class LoanTableViewCell: UITableViewCell {

    // MARK: IBOutlets
    @IBOutlet weak var loanDefaultCard: DefaultCard!
    
}

// MARK: Setup
extension LoanTableViewCell {
    
    func setup() {
        loanDefaultCard.set(imageName: "loanMoney", topText: "Empréstimo", bottomText: "loan.loanText".localized)
    }
}
