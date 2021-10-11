import UIKit

class CreditCardTableViewCell: UITableViewCell {

    @IBOutlet weak var creditCardDefaultCard: DefaultCard!
    
    func setup() {
        creditCardDefaultCard.set(imageName: "creditCard", topText: "Cartão de crédito", bottomText: "Limite disponível de R$ 8.902,08")
        
        creditCardDefaultCard.showSecondaryLabelViews(topText: "Fatura atual", bottomText: "R$ 193,02")
    }
    
}

