import UIKit

class LoanTableViewCell: UITableViewCell {

    @IBOutlet weak var loanDefaultCard: DefaultCard!
    
    func setup() {
    loanDefaultCard.set(imageName: "loanMoney", topText: "Empréstimo", bottomText: "Crie um aviso para saber quando um \nempréstimo ficar disponível")
    }
}
