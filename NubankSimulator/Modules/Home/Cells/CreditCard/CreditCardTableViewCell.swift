import UIKit

class CreditCardTableViewCell: UITableViewCell {

    // MARK: IBOutlets
    @IBOutlet weak var creditCardDefaultCard: DefaultCard!
    
    // MARK: Stored Properties
    let user: User = User()
}

// MARK: Setup
extension CreditCardTableViewCell {
    
    func setup() {
        creditCardDefaultCard.set(imageName: "creditCard", topText: "creditCard.creditCard".localized, bottomText: "Limite disponível de R$ \(user.limit)")
        
        creditCardDefaultCard.showSecondaryLabelViews(topText: "creditCard.actualBill".localized, bottomText: "R$ \(user.creditCard)")
    }
}
