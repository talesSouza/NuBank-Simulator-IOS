import UIKit

class ActionOptionsTableViewCell: UITableViewCell {

    @IBOutlet weak var roundedItens: RoundedCardItem!
    
    func config() {
        roundedItens.set(text: "Área Pix", image: UIImage(named: "pix")!)
    }

}
